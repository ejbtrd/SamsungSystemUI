.class public final synthetic Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->dismiss()V

    return-void
.end method
