.class public final synthetic Lcom/android/systemui/volume/view/VolumeSeekBar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/view/VolumeSeekBar;

.field public final synthetic f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/view/VolumeSeekBar;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeSeekBar$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/volume/view/VolumeSeekBar;

    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumeSeekBar$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeSeekBar$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/volume/view/VolumeSeekBar;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeSeekBar$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {v0, p0}, Lcom/android/systemui/volume/view/VolumeSeekBar;->$r8$lambda$6q4GRx6nPMjPAXS50kdaMNVxICA(Lcom/android/systemui/volume/view/VolumeSeekBar;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    return-void
.end method
