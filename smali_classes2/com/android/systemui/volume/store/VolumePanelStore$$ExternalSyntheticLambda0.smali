.class public final synthetic Lcom/android/systemui/volume/store/VolumePanelStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/systemui/splugins/volume/VolumePanelState;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/store/VolumePanelStore$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/store/VolumePanelStore$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;

    invoke-static {p0, p1}, Lcom/android/systemui/volume/store/VolumePanelStore;->$r8$lambda$gTWDv4C4voQaFuTBvu2nbxm7Ko0(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;)V

    return-void
.end method
