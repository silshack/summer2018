---
layout: default
title: "Assignments"
---

## {{ site.course.number }} Assignments

Assignments will be added below.  Readings should be done by the beginning of class.  Exercises should
be completed by the date and time listed.  Class notes are for your reference of if you have to miss a class.

{% comment %} Jekyll 2.4 doesn't support the concat filter so we hack it with push {% endcomment %}



{% comment %} Get exercises and inclass exercises {% endcomment %}
{% assign exercises = "" | split: "" %}
{% assign inclassexercises = "" | split: "" %}
{% assign sortedex = "" | split: "" %}
{% for post in site.posts %}
    {% if post.categories contains "exercise" %}
        {% assign sortedex = sortedex | push: post} %}
    {% endif %}
{% endfor %}
{% for exercise in sortedex %}
    {% if exercise.published != false %}
        {% if exercise.inclass == true %}
            {% assign inclassexercises = inclassexercises | push: exercise %}
        {% else %}
            {% assign exercises = exercises | push: exercise %}
        {% endif %}
    {% endif %}
{% endfor %}

{% comment %} Get readings {% endcomment %}
{% assign readings = (site.categories.reading |  sort: 'date'} %}

{% comment %} Get notes {% endcomment %}
{% assign notes = (site.categories.notes |  sort: 'date'} %}

{% comment %} Push them onto assignments in the correct order {% endcomment %}
{% assign assignments = "" | split: "" %}
{% assign class_dates = "" | split: "" %}
{% for note in (site.categories.notes | sort: 'date') %}
    {% assign class_dates = class_dates | unshift: note.date %}
{% endfor %}
{% for date in class_dates %}
    {% assign inclass = "" | split: "" %}
    {% for reading in readings %}
      {% if reading.date  == date %}
          {% assign assignments = assignments | push: reading %}
      {% endif %}
    {% endfor %}
    {% for exercise in exercises %}
      {% if exercise.date  == date %}
      {% assign assignments = assignments | push: exercise %}
      {% endif %}
    {% endfor %}
    {% for note in notes %}
        {% if note.date == date %}
        {% assign assignments = assignments | push: note %}
        {% endif %}
    {% endfor %}
    {% for ice in inclassexercises %}
      {% if ice.date == date %}
      {% assign inclass = inclass | push: ice %}
      {% endif %}
    {% endfor %}
    {% assign inclass = inclass | sort: 'title' %}
    {% for ice in inclass %}
      {% assign assignments = assignments | push: ice %}
    {% endfor %}
{% endfor%}

{% assign all_assignments = assignments  %}

<table role="main" aria-label="Assignments list">

    <th>Type</th>
    <th>Title</th>
    <th>Due Date</th>

{% assign even = false %}
{% assign prevdate = nil %}

{% for post in all_assignments  %}
{% if prevdate != post.date %}
    {% assign prevdate = post.date %}
    {% assign newdate = true %}
    {% if even %}
        {% assign even = false %}
    {% else %}
        {% assign even = true %}
    {% endif %}
{% endif %}
    <tr aria-label='{{ post.title | escape }}' class="{% if even %}even{% else %}odd{% endif %} {{ post.date | date: '%b%d' }} {% if newdate %}newdate{% endif %} {% if post.categories contains 'notes' %}notes{% endif %}">
        <td>
            {% if post.categories contains "exercise" %}
            <span class="label round {% if post.inclass == true %}warning">In-class {% else %}success">{% endif %}Exercise</span>
            {% endif %}
            {% if post.categories contains "reading" %}
            <span class="label round info">Reading</span>
            {% endif %}
            {% if post.categories contains "notes" %}
            <span class="label round">Class Notes</span>
            {% endif %}
        </td>
        <td>
            {% if post.link %}
                {% assign link = post.link %}
            {% else %}
                {% capture link %}{{ site.baseurl }}{{ post.url }}{% endcapture %}
            {% endif %}
            <a href="{{ link }}">{% if post.categories contains "notes" %} <b>{{ post.date | date: "%b %d" }} - {% endif %}{{ post.title }} {% if post.categories contains "notes" %} </b>{% endif %}</a>
        </td>
        <td>
            {% if post.categories contains "notes"%}
            {% else %}
            <span>{% if post.categories contains "exercise" %}{% if post.inclass == true %} {{ post.date | date: "%a, %b %d, %Y" }} by midnight{% else %} {{ post.date | date: "%a, %b %d, %Y" }} at start of class{% endif %}{% else %} {{ post.date | date: "%a, %b %d, %Y" }} {% endif %}</span>
            {% endif %}
        </td>
    </tr>
{% assign newdate = false %}
{% endfor %}

</table>

<!-- WIP
<script>
$('.notes').click(function() {
    var $this = $(this);
    var prevdate = $(this).prevUntil('.newdate').prev();
    console.log(prevdate);
    prevdate.nextUntil('.newdate').slideToggle(100).promise().done(function () {
        $this.find('span').text(function (_, value) {
            return value == '-' ? '+' : '-'
        });
    });
    $(this).slideToggle();
});
</script>-->