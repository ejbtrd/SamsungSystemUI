.class public final synthetic Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/systemui/splugins/volume/VolumePanelRow;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda25;->f$0:Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda25;->f$0:Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    invoke-static {p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->$r8$lambda$UQPN25ceMgMfY7qp3l31kQC0gn4(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Z

    move-result p0

    return p0
.end method
