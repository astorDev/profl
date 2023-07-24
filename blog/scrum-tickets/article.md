# Agile in the real world roles

Let's start with the legend...

That's a sunny Monday. Your team has just finished the previous sprint. You all gather around in a meeting room. And here comes the product owner. He comes with a pack of sticky notes. He puts them on the whiteboard. He explains the common topic of the stories. The sprint planning begins. The stories describe what your users want. Your team picks them one by one and plays a planning poker after briefly discussing them. The sprint backlog is formed. You understand precisely what to do next and you are ready to start the sprint.

But that's in a scrum book. In the real life, there's no product owner, because there's no such role in your company. Stories are unrelated because they come from different departments. They are vague, unstructured, and block each other. You throw a random estimate at them. A manager assigns you a story and you are searching for a person who can demystify that story for you.

The real world could be less painful if we'll have a system ensuring accountability for each ticket type. Let's digest them one by one.

## Epic

Let's start epic! You may have noticed there's no such word in the legend. Why does it keep appearing in a scrum discussions and in a project management software? Well, in the real world there are also stakeholders behind the scene asking for a high-level overview of a project's steps, ideally with deadlines on a calendar. That often leads to putting user stories on a grant diagram. But that's anti-agile. Instead, epics could be used to provide the experience. They'll map the sprint's progress to a long-term progress overview.

Additionally, epics could provide a starting point for a product owner, narrowing down the scope in which user stories are created. That will work if the epic is written by a person with a bird-view vision of the product. Ideally, the CEO, CTO, or Chief Product Officer. The epic also should be reviewed like all the other ticket types. The project manager or business analyst should review the epic, checking if the epic provides them extensive guidance on what the end result should look like. Checking whether the epic provides them values against which the end result will be evaluated.

If done perfectly, epics could be the common language of the very top management and the development team. Providing the C-guys with a clear picture of the product vision and progress and providing the developers with a clear context in which they are creating the product.

## User Story

Back to making the real life closer to the agile legend. First, let's find a product owner. Let's gather around a whiteboard and start the investigation. Highlight the "user" word for me, please. It means that the ticket should describe a feature from a user perspective. So, let's keep an engineering lead and a software architect out of here. That's not what they are good at. A business analyst, and a project manager with the help of a UI / UX designer. That's a good team to create a story. 

But what in my mind is equally important is a review process. And I don't feel like embedding the whole development team in the process is a rational approach. It will allocate resources a lot more efficiently if at least a first-sight review is performed by a dedicated professional. It's important to review the story from two angles: does it match a global business strategy and is it sufficiently described and technically feasible? The first angle, in ideal, is reviewed by a CTO / CEO / CPO. The second is reviewed by Team Lead, Software Architect, and QA lead.

An ideal user story will describe what a user will have after its implementation. It will both show a stakeholder how their vision is transformed into an actual app behavior and guide a developer to what the end result will look like. User stories are so fundamental that if they are done right everything else will almost automatically fall into place. However, if done badly the whole process will be like building a home on a rotten foundation. So try to set up a user story review process with people from different roles involved. It'll make sure your journey starts with a good story.

## Task

So, here you stay in the middle of a ~jungle~ meeting room. Your team has just received a bunch of user stories. The managers stare at you, wondering why are you still here. We've just told you what a user wants, so go and do it. But you look at your team and feel that there are about 5 implementation ideas flying around... 

But first, how do you cook an elephant? One task at a time!

We need something more than a user story to start coding. Let's say a story is about a user being able to create an order. For that, we'll need to create a UI form and an API endpoint. We have a backend and a frontend developer ready to step in. But both of them need an API contract. That's one of the things that should be defined in a task. A task should describe an input and an output of the applied change from a technical perspective. But who is responsible for that?

The person who writes the task must be competent enough to define the contracts of an API, the communication logic of a UI component, and any other technical detail. So that's clearly somebody from an engineering team. I would name a software architect, an engineering team lead, and a senior developer as good candidates. Task is a crucial ticket type and people in many roles depend on it. They should all participate in the task review. A QA should check if every case is covered and clearly described. A dev should check if the task is clear and complete. A BA should check if the task will fulfill the user's desires.

Tasks are the driving force of software architecture. Although many software team leaders neglect their importance I would say a good task makes a good architecture. Development without a task provokes miscommunication and conflicts. A review without a clear task is frequently unbelievably slower. To cook an elephant you probably need a cookbook. Cooking software is much more complicated. And software cookbook is your task board.

## Subtask

When you have a task on your hand you're almost ready to go. However, even in a single technical unit like an endpoint or UI component, a few people may be involved. One person can be responsible for the deployment, one for coding, and one for testing. Here subtasks come in handy. If you feel like splitting a task is an overhead this is totally fine. Subtasks are completely optional. They are mostly needed if you need to assign parts of a task to different people.

This is also a team-level business. No one outside of a team has a say in this. A team lead or any other senior-level person can create a ticket of that type. A subtask describes a precise set of actions for a single person. So the assignee is the only person who should review the ticket.

If a few people needed to complete a single task subtasks come into play. They come in handy sometimes but a scrum team should focus on writing a good user story and tasks first. 