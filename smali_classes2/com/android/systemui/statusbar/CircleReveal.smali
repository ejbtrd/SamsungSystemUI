.class public final Lcom/android/systemui/statusbar/CircleReveal;
.super Ljava/lang/Object;
.source "LightRevealScrim.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/LightRevealEffect;


# instance fields
.field private final centerX:F

.field private final centerY:F

.field private final endRadius:F

.field private final startRadius:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Lcom/android/systemui/statusbar/CircleReveal;->centerX:F

    .line 90
    iput p2, p0, Lcom/android/systemui/statusbar/CircleReveal;->centerY:F

    .line 92
    iput p3, p0, Lcom/android/systemui/statusbar/CircleReveal;->startRadius:F

    .line 94
    iput p4, p0, Lcom/android/systemui/statusbar/CircleReveal;->endRadius:F

    return-void
.end method


# virtual methods
.method public setRevealAmountOnScrim(FLcom/android/systemui/statusbar/LightRevealScrim;)V
    .locals 3
    .param p2    # Lcom/android/systemui/statusbar/LightRevealScrim;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "scrim"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/android/systemui/statusbar/LightRevealEffect;->Companion:Lcom/android/systemui/statusbar/LightRevealEffect$Companion;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/LightRevealEffect$Companion;->getPercentPastThreshold(FF)F

    move-result v0

    .line 100
    iget v1, p0, Lcom/android/systemui/statusbar/CircleReveal;->startRadius:F

    iget v2, p0, Lcom/android/systemui/statusbar/CircleReveal;->endRadius:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    .line 101
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealGradientEndColorAlpha(F)V

    .line 103
    iget p1, p0, Lcom/android/systemui/statusbar/CircleReveal;->centerX:F

    sub-float v0, p1, v1

    .line 104
    iget p0, p0, Lcom/android/systemui/statusbar/CircleReveal;->centerY:F

    sub-float v2, p0, v1

    add-float/2addr p1, v1

    add-float/2addr p0, v1

    .line 102
    invoke-virtual {p2, v0, v2, p1, p0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealGradientBounds(FFFF)V

    return-void
.end method
