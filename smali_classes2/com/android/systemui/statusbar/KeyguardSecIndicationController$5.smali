.class Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;
.super Ljava/lang/Object;
.source "KeyguardSecIndicationController.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardSecIndicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep()V
    .locals 6

    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v1, Lcom/android/systemui/statusbar/IndicationPosition;->BIOMERIC_ERROR:Lcom/android/systemui/statusbar/IndicationPosition;

    sget-object v2, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_HIGH:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1000(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/content/res/ColorStateList;

    move-result-object v4

    const-string v3, ""

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$602(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Z)Z

    .line 501
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$900(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 502
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$900(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->removeAllIndications()V

    :cond_0
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$602(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Z)Z

    .line 494
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$700(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    .line 495
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$800(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    return-void
.end method
