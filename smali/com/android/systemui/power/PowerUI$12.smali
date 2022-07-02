.class Lcom/android/systemui/power/PowerUI$12;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    .line 2188
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$12;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 2

    .line 2197
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$12;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 2198
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$12;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/power/PowerUI;->access$5702(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 2201
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$12;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {p0}, Lcom/android/systemui/power/PowerUI;->access$1600(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissUnintentionalLcdOnNotice()V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .line 2191
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$12;->this$0:Lcom/android/systemui/power/PowerUI;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const/4 v0, 0x1

    .line 2192
    invoke-static {p0, v0}, Lcom/android/systemui/power/PowerUI;->access$5702(Lcom/android/systemui/power/PowerUI;Z)Z

    return-void
.end method
