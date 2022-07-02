.class Lcom/android/systemui/volume/SamsungVolumeDialogImpl$1;
.super Ljava/lang/Object;
.source "SamsungVolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;


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

    .line 158
    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityModeChanged(Ljava/lang/Boolean;)V
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->access$000(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)Lcom/android/systemui/volume/VolumePanelImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumePanelImpl;->onAccessibilityModeChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onCaptionComponentStateChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->access$000(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)Lcom/android/systemui/volume/VolumePanelImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumePanelImpl;->onCaptionComponentStateChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->access$000(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)Lcom/android/systemui/volume/VolumePanelImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanelImpl;->onConfigurationChanged()V

    return-void
.end method

.method public onDismissRequested(I)V
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->access$000(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)Lcom/android/systemui/volume/VolumePanelImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanelImpl;->onDismiss()V

    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 0

    return-void
.end method

.method public onPlaySound(IZ)V
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->access$000(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)Lcom/android/systemui/volume/VolumePanelImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanelImpl;->onPlaySound(IZ)V

    return-void
.end method

.method public onPlaySound(IZI)V
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->access$000(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)Lcom/android/systemui/volume/VolumePanelImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/volume/VolumePanelImpl;->onPlaySound(IZI)V

    return-void
.end method

.method public onScreenOff()V
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->access$000(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)Lcom/android/systemui/volume/VolumePanelImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanelImpl;->onScreenOff()V

    return-void
.end method

.method public onShowRequested(I)V
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->access$000(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)Lcom/android/systemui/volume/VolumePanelImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumePanelImpl;->onShow(I)V

    return-void
.end method

.method public onShowSafetyWarning(I)V
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->access$000(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)Lcom/android/systemui/volume/VolumePanelImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumePanelImpl;->onShowSafetyWarning(I)V

    return-void
.end method

.method public onShowSilentHint()V
    .locals 0

    return-void
.end method

.method public onShowVibrateHint()V
    .locals 0

    return-void
.end method

.method public onShowVolumeLimiterToast()V
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->access$000(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)Lcom/android/systemui/volume/VolumePanelImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanelImpl;->onShowVolumeLimiterToast()V

    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->access$000(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)Lcom/android/systemui/volume/VolumePanelImpl;

    move-result-object p0

    invoke-static {p1}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$VolumeStateMapper;->convertState(Lcom/android/systemui/plugins/VolumeDialogController$State;)Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumePanelImpl;->onStateChanged(Lcom/samsung/systemui/splugins/volume/VolumeState;)V

    return-void
.end method
