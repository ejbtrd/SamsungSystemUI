.class public Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelperController;
.super Ljava/lang/Object;
.source "TaskSurfaceHelperController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelperController$TaskSurfaceHelperImpl;
    }
.end annotation


# instance fields
.field private final mImpl:Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelperController$TaskSurfaceHelperImpl;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelperController$TaskSurfaceHelperImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelperController$TaskSurfaceHelperImpl;-><init>(Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelperController;Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelperController$1;)V

    iput-object v0, p0, Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelperController;->mImpl:Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelperController$TaskSurfaceHelperImpl;

    .line 41
    iput-object p1, p0, Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelperController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 42
    iput-object p2, p0, Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelperController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-void
.end method


# virtual methods
.method public asTaskSurfaceHelper()Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelper;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelperController;->mImpl:Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelperController$TaskSurfaceHelperImpl;

    return-object p0
.end method
