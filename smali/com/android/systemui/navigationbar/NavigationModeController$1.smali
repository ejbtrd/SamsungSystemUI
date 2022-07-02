.class Lcom/android/systemui/navigationbar/NavigationModeController$1;
.super Ljava/lang/Object;
.source "NavigationModeController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigationbar/NavigationModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/navigationbar/NavigationModeController;


# direct methods
.method constructor <init>(Lcom/android/systemui/navigationbar/NavigationModeController;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationModeController$1;->this$0:Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceProvisionedChanged()V
    .locals 5

    .line 107
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_1

    .line 109
    invoke-static {}, Lcom/android/systemui/navigationbar/NavigationModeController;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceProvisionedChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationModeController$1;->this$0:Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 110
    invoke-static {v2}, Lcom/android/systemui/navigationbar/NavigationModeController;->access$100(Lcom/android/systemui/navigationbar/NavigationModeController;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationModeController$1;->this$0:Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationModeController;->access$100(Lcom/android/systemui/navigationbar/NavigationModeController;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationModeController$1;->this$0:Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-static {v1}, Lcom/android/systemui/navigationbar/NavigationModeController;->access$200(Lcom/android/systemui/navigationbar/NavigationModeController;)Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 118
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationModeController$1;->this$0:Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-static {v1, v0}, Lcom/android/systemui/navigationbar/NavigationModeController;->access$202(Lcom/android/systemui/navigationbar/NavigationModeController;Z)Z

    .line 119
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationModeController$1;->this$0:Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationModeController;->access$300(Lcom/android/systemui/navigationbar/NavigationModeController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->getOverlayPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationModeController$1;->this$0:Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-static {v1}, Lcom/android/systemui/navigationbar/NavigationModeController;->access$400(Lcom/android/systemui/navigationbar/NavigationModeController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/navigationbar/NavigationModeController;->access$500(Lcom/android/systemui/navigationbar/NavigationModeController;Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.internal.systemui.navbar.threebutton"

    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationModeController$1;->this$0:Lcom/android/systemui/navigationbar/NavigationModeController;

    const/4 v2, -0x2

    sget-object v3, Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;->UPDATE_INTERACTION_MODE_DEVICE_PROVISIONED_COMPLETE:Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/navigationbar/NavigationModeController;->setModeOverlay(Ljava/lang/String;ILcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationModeController$1;->this$0:Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationModeController;->access$600(Lcom/android/systemui/navigationbar/NavigationModeController;)Lcom/android/systemui/navigationbar/store/NavBarStore;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->ON_DEVICE_PROVISIONED_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DEVICE_PROVISIONED:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavigationModeController$1;->this$0:Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 127
    invoke-static {v4}, Lcom/android/systemui/navigationbar/NavigationModeController;->access$200(Lcom/android/systemui/navigationbar/NavigationModeController;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 126
    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public onUserSwitched()V
    .locals 3

    .line 135
    invoke-static {}, Lcom/android/systemui/navigationbar/NavigationModeController;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserSwitched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationModeController$1;->this$0:Lcom/android/systemui/navigationbar/NavigationModeController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationModeController;->updateCurrentInteractionMode(Z)V

    return-void
.end method
