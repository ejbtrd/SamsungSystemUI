.class Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$3;
.super Lcom/samsung/android/multiwindow/INaturalSwitchingListener$Stub;
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
.method public static synthetic $r8$lambda$L6DiQrAIilD1M-J4DypUxZWYN60(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$3;->lambda$onNaturalSwitchingStart$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ljaz7av9DZYn50kIxCF5qb9PVWU(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$3;->lambda$onNaturalSwitchingFinish$1()V

    return-void
.end method

.method constructor <init>(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$3;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/INaturalSwitchingListener$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$onNaturalSwitchingFinish$1()V
    .locals 2

    .line 195
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$3;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    .line 196
    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->access$100(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    const/4 v1, 0x0

    .line 195
    invoke-static {p0, v0, v1}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->access$400(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;FZ)V

    return-void
.end method

.method private synthetic lambda$onNaturalSwitchingStart$0()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$3;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->access$700(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$3;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->access$800(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)V

    .line 185
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$3;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    const v0, 0x3f666666    # 0.9f

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->access$400(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;FZ)V

    return-void
.end method


# virtual methods
.method public onNaturalSwitchingFinish()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$3;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->access$000(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$3$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$3$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$3;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNaturalSwitchingStart()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$3;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->access$000(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$3;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
