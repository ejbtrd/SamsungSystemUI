.class public final synthetic Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;

.field public final synthetic f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;

    iput-object p2, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;

    iget-object p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-static {v0, p0}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->$r8$lambda$ZRMRpONIbYDXrrhBGdkvHXtByFU(Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    return-void
.end method
