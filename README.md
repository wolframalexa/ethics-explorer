# Ethics Explorer

### A simple Node and SQLite app to help students explore ethical careers in engineering

# Intro

Ethical conduct is an essential part of professionalism in engineering. Although engineering ethics is integrated into various courses at the Cooper Union, I feel that we can be more focused when thinking about ethics in terms of employment, and prepare students for the kinds of issues they will face as professionals. As a final project for ECE464: Databases and HUM99: Engineering Ethics at the [Cooper Union](https://cooper.edu), I am building a tool to help engineering students consider the ethical impacts of their chosen careers. With the caveat that every industry will have its challenges, my goal is to kickstart a discussion about the ethical impacts of engineering amongst students in the areas of equity, labor, corporate citizenship, privacy, the environment, and safety.

The project is build with a JavaScript frontend, Node.JS backend, and SQLite database.

# Using the tool

You can use the tool in your browser at [https://ethics-explorer.glitch.me/](https://ethics-explorer.glitch.me/).

## Caveats

- You should choose a job considering many factors, including your skills, your interests, location, compensation, opportunities for growth, team structure and makeup, and job responsibilities. This tool will not recommend a certain path - that is up to you.
- This tool should not be used to cast negative judgment on people. We all make choices based on the information we have at the time and for a variety of reasons.
- You should not be discouraged about ethical challenges you may face - no field is perfect. Instead, I hope you will consider ways you can be the change you wish to see.
- The industries here are fairly broad and there are a lot of grey areas, and not every potential job is covered. There are also potentially ethical jobs in industries you wouldn't otherwise consider.

# Client Website Walkthrough

Most of the logic is handled in the script tag of the `index.html` file.

1. Students start by selecting a major from the dropdown. This fetches the relevant industries from the database using `routes.dropdown` and displays the starting salary for the major.
1. Select an industry from the dropdown. This fetches the relevant ethical areas from the database using `routes.dropdown2`.
1. After selecting an area of interest, the explanation text and statistics about the industry are queried from the database and displayed to the user.

# Data Sources

Industries in the database were identified with industries from the BLS’s statistics. For example, for race and gender, the data is from [this](https://www.bls.gov/cps/cpsaat18.htm) table from 2020. When more than one BLS industry is selected, a percentage spanning the BLS industries is calculated. Although it may have been more accurate to select from the entire list of industries, I feel that the number would have been overwhelming to students and wanted to pare it down.

Data for the military was obtained from [this](https://crsreports.congress.gov/product/pdf/R/R44321) Congressional Research Service report. It was assumed the military has no union members.

I determined the matches between majors and industries, wrote the blurbs, and selected relevant articles.

# Suggestions

This tool is hack-y rather than robust, and has a lot of room to grow. I welcome your pull requests and issues, or you can reach me by email at jakob [at] cooper.edu.
