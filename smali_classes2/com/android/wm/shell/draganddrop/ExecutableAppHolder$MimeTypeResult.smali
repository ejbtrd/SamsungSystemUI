.class Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MimeTypeResult;
.super Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultImpl;
.source "ExecutableAppHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MimeTypeResult"
.end annotation


# instance fields
.field private final mActivityInfo:Landroid/content/pm/ActivityInfo;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;Landroid/content/pm/ActivityInfo;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultImpl;-><init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;)V

    .line 718
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MimeTypeResult;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-void
.end method


# virtual methods
.method public hasResizableResolveInfo()Z
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MimeTypeResult;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 744
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultImpl;->supportsMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    return p0
.end method

.method public hasResolveInfoInFullscreen(Lcom/android/wm/shell/draganddrop/VisibleTasks;)Z
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MimeTypeResult;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 735
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/VisibleTasks;->getFullscreenTasks()Ljava/util/List;

    move-result-object p1

    .line 736
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MimeTypeResult;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultImpl;->isVisibleSingleInstance(Ljava/util/List;Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    return p0
.end method

.method public hasResolveInfoInFullscreenOnly(Lcom/android/wm/shell/draganddrop/VisibleTasks;)Z
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MimeTypeResult;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 726
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/VisibleTasks;->getFullscreenTasks()Ljava/util/List;

    move-result-object p1

    .line 727
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MimeTypeResult;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultImpl;->isVisibleSingleInstance(Ljava/util/List;Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    return p0
.end method

.method public makeExecutableApp(Landroid/content/Context;ILcom/android/wm/shell/draganddrop/VisibleTasks;)Lcom/android/wm/shell/draganddrop/AppInfo;
    .locals 2

    .line 749
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MimeTypeResult;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 750
    new-instance p0, Lcom/android/wm/shell/draganddrop/AppInfo;

    invoke-direct {p0, v1, v1, v0}, Lcom/android/wm/shell/draganddrop/AppInfo;-><init>(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Z)V

    return-object p0

    .line 752
    :cond_0
    invoke-virtual {p3, p2}, Lcom/android/wm/shell/draganddrop/VisibleTasks;->getTasksException(I)Ljava/util/List;

    move-result-object p1

    .line 753
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MimeTypeResult;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultImpl;->isVisibleSingleInstance(Ljava/util/List;Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v1

    .line 756
    :cond_1
    new-instance p0, Lcom/android/wm/shell/draganddrop/AppInfo;

    invoke-direct {p0, v1, v1, v0}, Lcom/android/wm/shell/draganddrop/AppInfo;-><init>(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Z)V

    return-object p0
.end method
