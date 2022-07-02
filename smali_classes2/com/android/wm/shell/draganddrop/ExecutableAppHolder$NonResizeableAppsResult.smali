.class Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$NonResizeableAppsResult;
.super Ljava/lang/Object;
.source "ExecutableAppHolder.java"

# interfaces
.implements Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonResizeableAppsResult"
.end annotation


# instance fields
.field private mAppLabel:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 761
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$NonResizeableAppsResult;->mAppLabel:Ljava/lang/CharSequence;

    .line 768
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$NonResizeableAppsResult;->mAppLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public static from(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$Result;
    .locals 1

    .line 764
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;->mNonResizeableAppOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$NonResizeableAppsResult;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;->mAppLabel:Ljava/lang/CharSequence;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$NonResizeableAppsResult;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public hasResizableResolveInfo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasResolveInfoInFullscreen(Lcom/android/wm/shell/draganddrop/VisibleTasks;)Z
    .locals 0

    .line 783
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "hasResolveInfoInFullscreen not implemented by NonResizeableAppsResult"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasResolveInfoInFullscreenOnly(Lcom/android/wm/shell/draganddrop/VisibleTasks;)Z
    .locals 0

    .line 778
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "hasResolveInfoInFullscreenOnly not implemented by NonResizeableAppsResult"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public makeExecutableApp(Landroid/content/Context;ILcom/android/wm/shell/draganddrop/VisibleTasks;)Lcom/android/wm/shell/draganddrop/AppInfo;
    .locals 0

    .line 773
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "makeExecutableApp not implemented by NonResizeableAppsResult"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
