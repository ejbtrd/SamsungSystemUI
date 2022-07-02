.class Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$1;
.super Landroid/view/IWallpaperVisibilityListener$Stub;
.source "SplitBackgroundController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;


# direct methods
.method public static synthetic $r8$lambda$v3wRlx6qRC5GpwoPJOb8ZUertEI(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$1;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$1;->lambda$onWallpaperVisibilityChanged$0(Z)V

    return-void
.end method

.method constructor <init>(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-direct {p0}, Landroid/view/IWallpaperVisibilityListener$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$onWallpaperVisibilityChanged$0(Z)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-static {v0, p1}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->access$102(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;Z)Z

    .line 96
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-static {p1}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->access$200(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 100
    :cond_0
    sget-boolean p1, Lcom/android/wm/shell/CoreShellRune;->MW_MULTI_SPLIT_BACKGROUND:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-static {p1}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->access$300(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 101
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    .line 102
    invoke-static {p1}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->access$100(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 104
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    .line 105
    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->access$100(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)Z

    move-result p0

    .line 101
    invoke-static {p1, v0, p0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->access$400(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;FZ)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onWallpaperVisibilityChanged(ZI)V
    .locals 1

    .line 94
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-static {p2}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->access$000(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p2

    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$1;Z)V

    invoke-interface {p2, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
