.class public final synthetic Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/samsung/android/edge/SemEdgeLightingInfo;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingService;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iput-object p2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    iput p4, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    iget p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->$r8$lambda$D2u47ZreCdvxxTnLfRcfiaqY-58(Lcom/android/systemui/edgelighting/EdgeLightingService;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    return-void
.end method
