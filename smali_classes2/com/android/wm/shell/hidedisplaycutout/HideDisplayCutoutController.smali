.class public Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;
.super Ljava/lang/Object;
.source "HideDisplayCutoutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController$HideDisplayCutoutImpl;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field mEnabled:Z

.field private final mImpl:Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController$HideDisplayCutoutImpl;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mOrganizer:Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController$HideDisplayCutoutImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController$HideDisplayCutoutImpl;-><init>(Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController$1;)V

    iput-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mImpl:Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController$HideDisplayCutoutImpl;

    .line 68
    iput-object p1, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mOrganizer:Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;

    .line 70
    iput-object p3, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 71
    invoke-virtual {p0}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->updateStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;)Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;Landroid/content/res/Configuration;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;
    .locals 2

    const-string/jumbo v0, "ro.support_hide_display_cutout"

    const/4 v1, 0x0

    .line 57
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_0
    new-instance v0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 63
    new-instance p1, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;

    invoke-direct {p1, p0, v0, p2}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)V

    return-object p1
.end method

.method private onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 98
    invoke-virtual {p0}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->updateStatus()V

    return-void
.end method


# virtual methods
.method public asHideDisplayCutout()Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mImpl:Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController$HideDisplayCutoutImpl;

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "HideDisplayCutoutController"

    .line 103
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " states: "

    .line 104
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  "

    .line 105
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnabled="

    .line 106
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 107
    iget-boolean v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 108
    iget-object p0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mOrganizer:Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method updateStatus()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 85
    iget-boolean v1, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mEnabled:Z

    if-ne v0, v1, :cond_0

    return-void

    .line 89
    :cond_0
    iput-boolean v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 91
    iget-object p0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mOrganizer:Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;

    invoke-virtual {p0}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->enableHideDisplayCutout()V

    goto :goto_0

    .line 93
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;->mOrganizer:Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;

    invoke-virtual {p0}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->disableHideDisplayCutout()V

    :goto_0
    return-void
.end method
