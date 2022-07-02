.class public final synthetic Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/samsung/systemui/splugins/volume/VolumePanelState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;ZLcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda10;->f$0:Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;

    iput-boolean p2, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda10;->f$1:Z

    iput-object p3, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda10;->f$2:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda10;->f$0:Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;

    iget-boolean v1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda10;->f$1:Z

    iget-object p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda10;->f$2:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->$r8$lambda$RZ59Dg7az9t19vdt8Rv9Th66rSk(Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;ZLcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method
