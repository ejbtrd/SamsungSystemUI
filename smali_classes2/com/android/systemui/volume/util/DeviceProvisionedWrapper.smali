.class public Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;
.super Ljava/lang/Object;
.source "DeviceProvisionedWrapper.java"


# static fields
.field private static TAG:Ljava/lang/String; = "DeviceProvisionedWrapper"


# instance fields
.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private final mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/basic/util/LogWrapper;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v0, p0, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 16
    iput-object p1, p0, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;)V
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public isDeviceProvisioned()Z
    .locals 4

    .line 20
    iget-object v0, p0, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    sget-object v1, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDeviceProvisioned() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;)V
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method
