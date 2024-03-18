# Developers Guide

## Values

<!-- todo: add some more content here... it's mostly just placeholder right now -->

- Collaboration
- Accessibility
- Community
- Ethical Considerations - User Privacy, Security

<!--
Some ChatGPT dribble...

> What are good engineering values to hold for open source projects

In open source projects, engineering values play a crucial role in fostering collaboration, innovation, and
sustainability. Here are some good engineering values to hold for open source projects:

Transparency: Make all aspects of the project visible, including code, discussions, decisions, and roadmaps.
              Transparency builds trust within the community and enables effective collaboration.

Collaboration: Encourage a culture of collaboration where contributors feel empowered to share ideas, provide feedback,
               and work together towards common goals. Foster a welcoming environment for newcomers to join and
               contribute.

Quality: Prioritize the quality of code, documentation, and user experience. Emphasize thorough testing, code reviews,
         and continuous integration to maintain high standards and ensure reliability.

Accessibility: Design and develop software that is accessible to a diverse audience, including people with disabilities.
               Strive to make user interfaces intuitive and inclusive, and provide comprehensive documentation to
               support all users.

Community: Foster a vibrant and inclusive community where everyone feels valued and respected. Encourage participation
           from individuals with diverse backgrounds, experiences, and perspectives.

Openness: Embrace openness in decision-making processes, governance structures, and licensing. Maintain open channels of
          communication and governance mechanisms that enable stakeholders to participate in shaping the direction of
          the project.

Sustainability: Ensure the long-term sustainability of the project by fostering a healthy ecosystem of contributors,
                users, and supporters. Establish clear project governance, maintain a roadmap for future development,
                and actively seek funding or support to sustain ongoing development efforts.

Adaptability: Be open to change and adaptation in response to evolving needs, technologies, and feedback from the
              community. Embrace new ideas and approaches that enhance the project's effectiveness and relevance.

Ethical Considerations: Consider the ethical implications of the project's technology and its potential impact on
                        society. Strive to develop software that respects user privacy, promotes security, and upholds
                        ethical principles.

Continuous Learning: Encourage continuous learning and professional development among contributors. Provide
                     opportunities for skill-building, knowledge sharing, and mentorship within the community.
-->

## Formatting

Formatting will be run on every commit and pull request to ensure the project meets the appropriate code style.

```shell
npm run format
```

## Licensing

When writing source code for the project, new files will need to include the proper legal header. This command
intentionally skips common configuration files seen across the project.

```shell
addlicense -f ./legal/header.txt -skip ini -skip yaml .
```
