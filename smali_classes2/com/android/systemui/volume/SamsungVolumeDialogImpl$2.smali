.class Lcom/android/systemui/volume/SamsungVolumeDialogImpl$2;
.super Ljava/lang/Object;
.source "SamsungVolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SamsungVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceProvisionedChanged()V
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->access$000(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)Lcom/android/systemui/volume/VolumePanelImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanelImpl;->onSetupWizardComplete()V

    return-void
.end method

.method public onUserSetupChanged()V
    .locals 0

    return-void
.end method

.method public onUserSwitched()V
    .locals 0

    return-void
.end method
