.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;
.super Ljava/lang/Object;
.source "UserSwitcherController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public static synthetic $r8$lambda$GfX2Geu4qeIXvGtLeQpWY8dCeQ4(Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->lambda$onDeviceProvisionedChanged$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0

    .line 1179
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onDeviceProvisionedChanged$0()V
    .locals 1

    .line 1184
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$2000(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 1185
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$1900(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    move-result-object p0

    .line 1184
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onDeviceProvisionedChanged()V
    .locals 2

    .line 1182
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$1700(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$1800(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1186
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$1500(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    :cond_0
    return-void
.end method
