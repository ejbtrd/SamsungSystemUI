.class Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$2;
.super Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener$Stub;
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
.method public static synthetic $r8$lambda$Yyh9Dr4w2s20yyNKNACVCeRzUmU(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$2;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$2;->lambda$onWallpaperVisibilityChanged$0(ZZ)V

    return-void
.end method

.method constructor <init>(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$2;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$onWallpaperVisibilityChanged$0(ZZ)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$2;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-static {v0, p1}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->access$102(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;Z)Z

    .line 162
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$2;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-static {p1}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->access$200(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$2;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-static {p1}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->access$100(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$2;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    .line 166
    invoke-static {p1}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->access$500(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)Z

    move-result p1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$2;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    .line 167
    invoke-static {p1}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->access$600(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    move-result-object p1

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isKeyguardShowing()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 168
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$2;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->updateBackgroundVisibility(ZZ)V

    return-void
.end method


# virtual methods
.method public onFinishRecentsAnimation(Z)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$2;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-static {p1}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->access$200(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 132
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$2;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->updateBackgroundVisibility(ZZ)V

    return-void
.end method

.method public onStartHomeAnimation(Z)V
    .locals 2

    .line 143
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_MULTI_SPLIT_BACKGROUND:Z

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$2;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-static {v0, p1}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->access$502(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;Z)Z

    :cond_0
    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 147
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$2;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->updateBackgroundVisibility(ZZI)V

    return-void
.end method

.method public onStartRecentsAnimation(Z)V
    .locals 1

    xor-int/lit8 p1, p1, 0x1

    .line 120
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$2;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->updateBackgroundVisibility(ZZ)V

    return-void
.end method

.method public onWallpaperVisibilityChanged(ZZ)V
    .locals 2

    .line 159
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_MULTI_SPLIT_BACKGROUND:Z

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$2;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->access$000(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$2;ZZ)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
