.class public final synthetic Lcom/android/systemui/volume/view/VolumeIcon$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/view/VolumeIcon;

.field public final synthetic f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/view/VolumeIcon;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/volume/view/VolumeIcon;

    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeIcon$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/volume/view/VolumeIcon;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeIcon$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/volume/view/VolumeIcon;->$r8$lambda$Dnh7qf9jMyapYZlBIK9dEBAlDgw(Lcom/android/systemui/volume/view/VolumeIcon;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method
