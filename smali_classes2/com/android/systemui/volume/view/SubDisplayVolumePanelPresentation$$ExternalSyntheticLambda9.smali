.class public final synthetic Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;

.field public final synthetic f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda9;->f$0:Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;

    iput-object p2, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda9;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    iput-boolean p3, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda9;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda9;->f$0:Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;

    iget-object v1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda9;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    iget-boolean p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda9;->f$2:Z

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->$r8$lambda$NSRw5ZAAsGBVGdGSLKWghI4gMtE(Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;Lcom/samsung/systemui/splugins/volume/VolumePanelState;ZLcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method
