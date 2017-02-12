//
//  TWApiConstants.swift
//  TeamWorkClient
//
//  Created by Anton Gubarenko on 01.02.17.
//  Copyright © 2017 Anton Gubarenko. All rights reserved.
//

import Foundation

struct TWApiClientConstants
{
    static let kStatus = "STATUS"
    
    struct APIPath
    {
        //
        static let getAccount = (path: "/account.json", rootElement: "account");
        static let getAuthenticate = (path: "/authenticate.json", rootElement: "account");
        //
        static let getLatestActivity = (path: "/latestActivity.json", rootElement: "activity");
        static let getLatestActivityForProject = (path: "/projects/%@/latestActivity.json", rootElement: "activity");
        static let deleteLatestActivityForProject = (path: "/activity/{id}.json", rootElement: "activity")
        //
        static let getAllInvoices = (path: "invoices.json", rootElement: "invoices")
        static let getAllInvoicesForProject = (path: "/projects/%@/invoices.json", rootElement: "invoices")
        static let getSingleInvoice = (path: "/invoices/%@.json", rootElement: "invoice")
        static let createNewInvoice = (path: "/invoices.json", rootElement: "invoice")
        static let createNewInvoiceForProject = (path: "/projects/%@invoices.json", rootElement: "invoice")
        static let updateInvoice = (path: "/invoices/%@.json", rootElement: "invoice")
        static let deleteInvoice = (path: "/invoices/%@.json", rootElement: "invoice")
        static let markInvoiceAsComplete = (path: "/invoices/%@/complete.json", rootElement: "invoices")
        static let markInvoiceAsUncomplete = (path: "/invoices/%@/uncomplete.json", rootElement: "invoices")
        static let getValidCurrencyCodes = (path: "/currencycodes.json", rootElement: "invoice")
        //check addTimeEntryToInvoice
        static let getAllExpenses = (path: "expenses.json", rootElement: "expenses")
        static let getAllExpensesForProject = (path: "/projects/%@/expenses.json", rootElement: "expenses")
        static let getSingleExpense = (path: "/expenses/%@.json", rootElement: "expense")
        static let createNewExpense = (path: "/expenses.json", rootElement: "expense")
        static let createNewExpenseForProject = (path: "/projects/%@expense.json", rootElement: "expense")
        static let updateExpense = (path: "/expenses/%@.json", rootElement: "expense")
        static let deleteExpense = (path: "/expenses/%@.json", rootElement: "expense")
        static let addUnbilledExpenseToInvoice = (path: "/invoices/%@/lineitems.json", rootElement: "lineitems")
        static let addTimeEntryToInvoice = (path: "/invoices/%@/lineitems.json", rootElement: "lineitems")
        //
        static let createCategory = (path: "/projects/%@/%@.json", rootElement: "category")
        static let getSingleCategory = (path: "/%@/%@.json", rootElement: "category")
        static let getAllCategoriesForProject = (path: "/projects/%@/%@.json", rootElement: "category")
        static let updateCategory = (path: "/%@/%@.json", rootElement: "category")
        static let deleteCategory = (path: "/%@/%@.json", rootElement: "category")
        //
        static let getRecentComments = (path: "/%@/%@/comments.json?page=%d&pageSize=%d", rootElement: "comments")
        static let getComment = (path: "/comments/%@.json", rootElement: "comment")
        static let createComment = (path: "/%@/%@/comments.json", rootElement: "comment")
        static let updateComment = (path: "/comments/%@.json", rootElement: "comment")
        static let deleteComment = (path: "/comments/%@.json", rootElement: "comment")
        static let markCommentAsRead = (path: "/comments/%@/markread.json", rootElement: "comment")
        //
        static let getEvents = (path: "/calendarevents.json?startdate=%@&endDate=%@&showDeleted=%@&eventTypeId=%d", rootElement: "events")
        static let getCalendarEvent = (path: "/calendarevents/%@.json", rootElement: "event")
        static let getEvent = (path: "/events/%@.json", rootElement: "event")
        static let createEvent = (path: "/calendarevents.json", rootElement: "event")
        static let updateEvent = (path: "/calendarevents/%@.json", rootElement: "event")
        static let deleteEvent = (path: "/calendarevents/%@.json", rootElement: "event")
        static let getCalendarEventTypes = (path: "/calendareventtypes.json", rootElement: "eventtypes")
        static let getEventTypes = (path: "/eventtypes.json", rootElement: "eventtypes")
        //
        static let createCompany = (path: "/companies.json", rootElement: "company")
        static let updateCompany = (path: "/companies/%@.json", rootElement: "company")
        static let deleteCompany = (path: "/companies/%@.json", rootElement: "company")
        static let getCompany = (path: "/companies/%@.json", rootElement: "company")
        static let getCompanies = (path: "/companies.json?page=%d&pageSize=%d", rootElement: "companies")
        static let getCompaniesForProject = (path: "/projects/%@/companies.json", rootElement: "companies")
        //
        static let getFilesForTask = (path: "/tasks/%@/files.json", rootElement: "project")
        static let getFilesForProject = (path: "/projects/%@/files.json", rootElement: "project")
        static let getFile = (path: "/files/%@.json", rootElement: "file")
        static let addFileToProject = (path: "/projects/%@/files.json", rootElement: "file")
        static let addNewFileVersionToFile = (path: "/files/%@.json", rootElement: "fileversion")
        static let deleteFileFromProject = (path: "/files/%@.json", rootElement: "file")
        static let getShortUrlForSharingFile = (path: "/files/%@/sharedlink.json", rootElement: "url")
        static let copyFileToAnotherProject = (path: "/files/%@/copy.json", rootElement: "project")
        static let moveFileToAnotherProject = (path: "/files/%@/move.json", rootElement: "project")
        static let updateProjectLogo = (path: "/projects/%@.json", rootElement: "project")
        //
        static let createMessage = (path: "/projects/%@/posts.json", rootElement: "post")
        static let getMessage = (path: "/posts/%@.json", rootElement: "post")
        static let getLastMessageForProject = (path: " /projects/%@/posts.json", rootElement: "posts")
        static let getLastMassagesForProjectByCategory = (path: "/projects/%@/cat/%@/posts.json", rootElement: "posts")
        static let updateMessage = (path: "/posts/%@.json", rootElement: "post")
        static let getArchivedMessagesForProject = (path: "/projects/%@/posts/archive.json", rootElement: "post")
        static let getArchivedMessagesForProjectByCategory = (path: "/projects/%@}/cat/%@/posts/archive.json", rootElement: "post")
        static let archiveMessage = (path: "/messages/%@/archive.json", rootElement: "post")
        static let unarchiveMessage = (path: "/messages/%@/unarchive.json", rootElement: "post")
        static let deleteMessage = (path: "/posts/%@.json", rootElement: "post")
        //
        static let createMessageReply = (path: "/messages/%@/messageReplies.json", rootElement: "messagereply")
        static let getSingleReply = (path: "/messageReplies/%@.json", rootElement: "messageReplies")
        static let getRepliesForMessage = (path: "/messages/%@/replies.json?page=%d&pageSize=%d", rootElement: "messageReplies")
        static let updateReply = (path: "/messageReplies/%@.json", rootElement: "messagereply")
        static let deleteReply = (path: "/messageReplies/%@.json", rootElement: "messagereply")
        static let markReplyAsRead = (path: "/messageReplies/%@/markread.json", rootElement: "messagereply")
        //
        static let getAllMilestones = (path: "/milestones.json?find=%@&getProgress=%@&page=%d&pageSize=%d", rootElement: "milestones")
        static let getAllMilestonesForProject = (path: "/projects/%@/milestones.json?find=%@&getProgress=%@", rootElement: "milestones")
        static let getMilestone = (path: "/milestones/%@.json?getProgress=%@%&showTaskLists=%@", rootElement: "milestone")
        static let markMilestoneAsComplete = (path: "/milestones/%@/complete.json", rootElement: "milestone")
        static let markMilestoneAsuncomplete = (path: "/milestones/%@/uncomplete.json", rootElement: "milestone")
        static let createMilestone = (path: "/projects/%@/milestones.json", rootElement: "milestone")
        static let updateMilestone = (path: "/milestones/%@.json", rootElement: "milestone")
        static let deleteMilestone = (path: "/milestones/%@.json", rootElement: "milestone")
        //
        static let getAllNotebooks = (path: "/notebooks.json?includeContent=%@", rootElement: "projects")
        static let getAllNotebooksForProject = (path: "/projects/%@/notebooks.json?includeContent=%@", rootElement: "project")
        static let getAllNotebooksForCategory = (path: "/notebookCategories/%@/notebooks.json?includeContent=%@", rootElement: "projects")
        static let getNotebook = (path: "/notebooks/%@.json", rootElement: "notebook")
        static let createNotebookForProject = (path: "/projects/%@/notebooks.json", rootElement: "notebook")
        static let updateNotebook = (path: "/notebooks/%@.json", rootElement: "notebook")
        static let lockSingleNotebookForEditing = (path: "/notebooks/%@/lock.json", rootElement: "notebook")
        static let unlockSingleNotebookForEditing = (path: "/notebooks/%@/unlock.json", rootElement: "notebook")
        static let deleteNotebook = (path: "/notebooks/%@.json", rootElement: "notebook")
        static let copyNotebookToOtherProject = (path: "/notebooks/%@/copy.json", rootElement: "id")
        static let moveNotebookToOtherProject = (path: "/notebooks/%@/move.json", rootElement: "id")
        //
        static let addUser = (path: "/people.json", rootElement: "person")
        static let editUser = (path: "/people/%@.json", rootElement: "person")
        static let deleteUser = (path: "/people/%@.json", rootElement: "person")
        static let getCurrentUserDetails = (path: "/me.json", rootElement: "person")
        static let getCurrentUserSummaryStats = (path: "/stats.json", rootElement: "stats")
        static let getPeople = (path: "/people.json?page=%d&pageSize=%d", rootElement: "people")
        static let getAllPeopleForProject = (path: "/projects/%@/people.json", rootElement: "people")
        static let getAllPeopleForCompany = (path: "/companies/%@/people.json", rootElement: "people")
        static let getPerson = (path: "/people/%@.json", rootElement: "person")
        static let getApiKeysForPeople = (path: "/people/APIKeys.json", rootElement: "people")
        static let unassignUserFromAllTasks = (path: " /people/%@.json", rootElement: "person")
        //
        static let createStatus = (path: "/me/status.json", rootElement: "userStatus")
        static let createStatusForPerson = (path: "/people/%@/status.json", rootElement: "userStatus")
        static let updateStatus = (path: "/me/status/%@.json", rootElement: "userStatus")
        static let updatePeopleStatus = (path: " /people/status/%@.json", rootElement: "userStatus")
        static let updateStatusForPeople = (path: " /people/%@/status/%@.json", rootElement: "stauserStatustus")
        static let deleteStatus = (path: "/me/status/%@.json", rootElement: "userStatus")
        static let deletePeopleStatus = (path: "/people/status/%@.json", rootElement: "userStatus")
        static let deleteStatusForPeople = (path: "/people/%@/status/%@.json", rootElement: "userStatus")
        static let getCurrentUserStatus = (path: "/me/status.json", rootElement: "userStatus")
        static let getPeopleStatus = (path: " /people/%@/status.json", rootElement: "userStatus")
        static let getAllStatuses = (path: "/people/status.json", rootElement: "userStatuses")
        //
        static let addNewUserToProject = (path: "/projects/%@/people/%@.json", rootElement: "project")
        static let addNewUsers = (path: "/projects/%@/people.json", rootElement: "project")
        static let deleteUserFromProject = (path: "/projects/%@/people/%@.json", rootElement: "project")
        static let getUserPermissions = (path: "/projects/%@/people/%@.json", rootElement: "people")
        static let updateUserPermissions = (path: "/projects/%@/people/%@.json", rootElement: "project")
        //
        static let createProject = (path: "/projects.json", rootElement: "project")
        static let updateProject = (path: "/projects/%@.json", rootElement: "project")
        static let deleteProject = (path: "/projects/%@.json", rootElement: "project")
        static let getAllProjects = (path: "/projects.json", rootElement: "projects")
        static let getSingleProject = (path: "/projects/%@.json", rootElement: "project")
        static let getProjectForCompany = (path: "/companies/%@/projects.json", rootElement: "project")
        static let getStarredProjects = (path: "/projects/starred.json", rootElement: "projects")
        static let starProject = (path: "/projects/%@/star.json", rootElement: "project")
        static let unstarProject = (path: "/projects/%@/unstar.json", rootElement: "project")
        static let getBox = (path: "/projects/%@/box.json", rootElement: "box")
        static let setBox = (path: "/projects/%@/box.json", rootElement: "box")
        static let getGoogleDrive = (path: "/projects/%@/googleDrive.json", rootElement: "google-drive")
        static let updateGoogleDrive = (path: "/projects/%@/googleDrive.json", rootElement: "google-drive")
        static let getProjectRates = (path: "/projects/%@/rates.json", rootElement: "rates")
        static let setProjectRates = (path: "/projects/%@/rates.json", rootElement: "rates")
        //
        static let getAllRolesForProject = (path: "/projects/%@/roles.json", rootElement: "roles")
        static let addRoleToProject = (path: "/projects/%@/roles.json", rootElement: "role")
        static let updateRoleOnProject = (path: "/roles/%@.json", rootElement: "role")
        static let deleteRole = (path: "/roles/{id}.json", rootElement: "role")
        static let getRole = (path: "/roles/%@.json", rootElement: "role")
        //
        static let getProjectEmailAddress = (path: "/projects/{id}/emailaddress.json", rootElement: "emailaddress")
        static let updateProjectEmailAddress = (path: "/projects/{id}/emailaddress.json", rootElement: "emailaddress")
        //
        static let search = (path: "/search.json?searchFor=%@&searchTerm=%@", rootElement: "searchResult")
        static let searchExtended = (path: "/search.json?searchFor=%@&searchTerm=%@&projectId=%@&sortOrder=%@&includArchivedProjects=%@&includeCompletedItems=%@&pageSize=%d", rootElement: "searchResult")
        static let getAllRisksForProject = (path: "/projects/%@/risks.json", rootElement: "risks")
        //
        static let getAllLinks = (path: "/links.json", rootElement: "projects")
        static let getAllLinksForProject = (path: "/projects/%@/links.json", rootElement: "project")
        static let getSingleLinks = (path: "/links/%@.json", rootElement: "link")
        static let createSingleLink = (path: "/projects/%@/links.json", rootElement: "link")
        static let updateLink = (path: "/links/%@.json", rootElement: "link")
        static let deleteLink = (path: "/links/%@.json", rootElement: "link")
        
        static let getAllTimeEntries = (path: "/time_entries.json", rootElement: "time-entries")
        static let getAllTimeEntriesForProject = (path: "/projects/%@/time_entries.json", rootElement: "time-entries")
        static let getAllToDoTimeEntries = (path: "/todo_items/%@/time_entries.json", rootElement: "time-entries")
        static let createTimeEntryForProject = (path: "/projects/%@/time_entries.json", rootElement: "time-entry")
        static let createTimeEntryForTask = (path: "/tasks/%@/time_entries.json", rootElement: "time-entry")
        static let getSingleTimeEntry = (path: "/time_entries/%@.json", rootElement: "time-entry")
        ///time_entries/{id}.json
        static let updateEntry = (path: "/time_entries/%@.json", rootElement: "time-entry")
        static let deleteEntry = (path: "/time_entries/%@.json", rootElement: "time-entry")
        static let getTotalTimes = (path: "/time/total.json", rootElement: "time-totals")
        static let getTotalTimesForProject = (path: "/projects/%@/time/total.json", rootElement: "time-totals")
        static let getTotalTimesForTracklist = (path: "/tasklists/%@/time/total.json", rootElement: "time-totals")
        static let getTotalTimesForTasks = (path: "/tasks/%@/time/total.json", rootElement: "time-totals")
        static let getTotalTimesPerProject = (path: "/projects/time/total.json", rootElement: "time-totals")
        //
        static let getAllTasklistsForProject = (path: "/projects/%@/tasklists.json", rootElement: "tasklists");
        static let getAllTasklistsForProjectWithParty = (path: "/projects/%@/tasklists.json?responsible-party-id=%@", rootElement: "tasklists");
        static let getAllTasklistsForProjectWithOverdue = (path: "/projects/%@/tasklists.json?getOverdueCount=yes", rootElement: "tasklists");
        static let getAllTasklistsForProjectWithPartyAndOverdue = (path: "/projects/%@/tasklists.json?responsible-party-id=%@&getOverdueCount=yes", rootElement: "tasklists");
        static let getAllTasklistsForProjectWhichCompleted = (path: "/projects/%@/tasklists.json?status=completed&getCompletedCount=yes", rootElement: "tasklists");
        static let getTasklist = (path: "/tasklists/%@.json", rootElement: "tasklist");
        static let updateTasklist = (path: "/tasklists/%@.json", rootElement: "tasklist");
        static let createTasklist = (path: "/projects/%@/tasklists.json", rootElement: "tasklist");
        static let deleteTasklist = (path: "/tasklists/%@.json", rootElement: "tasklist");
        static let reorderTasklist = (path: "/projects/%@/tasklists/reorder.json", rootElement: "tasklist");
        static let moveTasklist = (path: "/tasklist/%@/move.json", rootElement: "tasklist");
        static let getAllTemplatesTasklists = (path: "/tasklists/templates.json", rootElement: "tasklist");
        
        static let getTasks = (path: "/tasks.json", rootElement: "todo-items")
        static let getTasksForProject = (path: "/projects/%@/tasks.json", rootElement: "todo-items")
        static let getTasksForTasklists = (path: "/tasklists/%@/tasks.json", rootElement: "todo-items")
        static let getTask = (path: "/tasks/%@.json?getFiles=%@&nestSubTasks=%@&includeCompletedSubtasks=%@", rootElement: "todo-item")
        static let getTaskDependecies = (path: "/tasks/%@/dependencies.json", rootElement: "dependents")
        static let markTaskComplete = (path: "/tasks/{id}/complete.json", rootElement: "todo-item")
        static let markTaskUncomplete = (path: "/tasks/{id}/uncomplete.json", rootElement: "todo-item")
        static let createTaskInTasklist = (path: "/tasklists/%@/tasks.json", rootElement: "todo-item")
        static let createSubTask = (path: "/tasks/%@.json", rootElement: "todo-item")
        static let updateTask = (path: "/tasks/%@.json", rootElement: "todo-item")
        static let deleteTask = (path: "/tasks/%@.json", rootElement: "todo-item")
        static let reorderTasksForTasklist = (path: "/tasklists/%@/tasks/reorder.json", rootElement: "todo-items")
        static let getCompletedTasks = (path: "/completedtasks.json", rootElement: "todo-items")
        static let changeCompletedDateForTask = (path: "/tasks/%@.json", rootElement: "todo-item")
        //
        static let getAllRemindersOfTask = (path: "/tasks/%@/reminders.json", rootElement: "reminders")
        static let createReminderForTask = (path: "/tasks/%@/reminders.json", rootElement: "reminder")
        static let updateReminderForTask = (path: "/tasks/%@/reminders/%@.json", rootElement: "reminder")
        static let updateReminder = (path: "/taskreminders/%@.json", rootElement: "reminder")
        static let deleteReminderForTask = (path: "/tasks/%@/reminders/%@.json", rootElement: "reminder")
        static let deleteReminder = (path: "/taskreminders/%@.json", rootElement: "reminder")
        //
        static let getAllTags = (path: "/tags.json", rootElement: "tags")
        static let getTag = (path: "/tags/%@.json", rootElement: "tag")
        static let createTag = (path: "/tags.json", rootElement: "tag")
        static let updateTag = (path: "/tags/%@.json", rootElement: "tag")
        static let deleteTag = (path: "/tags/%@.json", rootElement: "tag")
        static let getAllTagsForResource = (path: "/%@/tags.json", rootElement: "tags")
        static let updateTagForResource = (path: "/%@/%@/tags.json", rootElement: "tags")
        //
        static let getAllWebhookEvents = (path: "/webhooks/events.json", rootElement: "events")
        static let getAllWebhooks = (path: "/webhooks.json", rootElement: "webhooks")
        static let getWebhook = (path: "/webhooks/%@.json", rootElement: "webhook")
        static let putWebhook = (path: "/webhooks/:id.json", rootElement: "webhook")
        static let resumeWebhook = (path: "/webhooks/%@/resume.json", rootElement: "webhook")
        static let pauseWebhook = (path: "/webhooks/%@/pause.json", rootElement: "webhook")
        static let deleteWebhook = (path: "/webhooks/%@.json", rootElement: "webhook")
        static let createWebhook = (path: "/webhooks.json", rootElement: "webhook")
        static let enableWebhooks = (path: "/webhooks/enable.json", rootElement: "webhook")
        static let disableWebhooks = (path: "/webhooks/disable.json", rootElement: "webhook")
        
        //
        static let getWorkload = (path: "/workload.json", rootElement: "workload")
    }
}
