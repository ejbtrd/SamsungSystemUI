.class public final Lcom/android/wm/shell/animation/FloatProperties$Companion$RECTF_Y$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "FloatProperties.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/animation/FloatProperties;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Landroid/graphics/RectF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "RectFY"

    .line 131
    invoke-direct {p0, v0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/graphics/RectF;)F
    .locals 0
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const p0, -0x800001

    goto :goto_0

    .line 137
    :cond_0
    iget p0, p1, Landroid/graphics/RectF;->top:F

    :goto_0
    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 131
    check-cast p1, Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/animation/FloatProperties$Companion$RECTF_Y$1;->getValue(Landroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method public setValue(Landroid/graphics/RectF;F)V
    .locals 0
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    iget p0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1, p0, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    :goto_0
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 131
    check-cast p1, Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/animation/FloatProperties$Companion$RECTF_Y$1;->setValue(Landroid/graphics/RectF;F)V

    return-void
.end method
