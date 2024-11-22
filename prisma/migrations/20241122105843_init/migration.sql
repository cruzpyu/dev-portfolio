-- CreateTable
CREATE TABLE "Stack" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "Project" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "image" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "ProjectStack" (
    "fk_stack" INTEGER NOT NULL,
    "fk_project" INTEGER NOT NULL,

    PRIMARY KEY ("fk_stack", "fk_project"),
    CONSTRAINT "ProjectStack_fk_stack_fkey" FOREIGN KEY ("fk_stack") REFERENCES "Stack" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "ProjectStack_fk_project_fkey" FOREIGN KEY ("fk_project") REFERENCES "Project" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
