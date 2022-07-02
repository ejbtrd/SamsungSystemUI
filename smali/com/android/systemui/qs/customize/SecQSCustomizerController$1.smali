.class Lcom/android/systemui/qs/customize/SecQSCustomizerController$1;
.super Ljava/lang/Object;
.source "SecQSCustomizerController.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/SecQSCustomizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$1;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$1;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$000(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScreenTurnedOff  mIsClosing ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$1;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$100(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iget-boolean v1, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsClosing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isShown ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$1;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$200(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecQSCustomizerController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$1;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->hide()V

    :cond_0
    return-void
.end method
