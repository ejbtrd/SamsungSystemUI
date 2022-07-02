.class public final synthetic Lcom/android/systemui/volume/middleware/JSonLogger$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/middleware/JSonLogger;

.field public final synthetic f$1:Lcom/google/gson/Gson;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/middleware/JSonLogger;Lcom/google/gson/Gson;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/middleware/JSonLogger$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/volume/middleware/JSonLogger;

    iput-object p2, p0, Lcom/android/systemui/volume/middleware/JSonLogger$$ExternalSyntheticLambda2;->f$1:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/middleware/JSonLogger$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/volume/middleware/JSonLogger;

    iget-object p0, p0, Lcom/android/systemui/volume/middleware/JSonLogger$$ExternalSyntheticLambda2;->f$1:Lcom/google/gson/Gson;

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/volume/middleware/JSonLogger;->$r8$lambda$9NMyTgIIrqTgn-OEv70fPldteDE(Lcom/android/systemui/volume/middleware/JSonLogger;Lcom/google/gson/Gson;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method
