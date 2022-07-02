.class final Lcom/android/keyguard/TextInterpolator$FontRun;
.super Ljava/lang/Object;
.source "TextInterpolator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/TextInterpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FontRun"
.end annotation


# instance fields
.field private baseFont:Landroid/graphics/fonts/Font;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final end:I

.field private final start:I

.field private targetFont:Landroid/graphics/fonts/Font;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILandroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;)V
    .locals 1
    .param p3    # Landroid/graphics/fonts/Font;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/fonts/Font;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "baseFont"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetFont"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->start:I

    .line 63
    iput p2, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->end:I

    .line 64
    iput-object p3, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->baseFont:Landroid/graphics/fonts/Font;

    .line 65
    iput-object p4, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->targetFont:Landroid/graphics/fonts/Font;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/keyguard/TextInterpolator$FontRun;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/keyguard/TextInterpolator$FontRun;

    iget v1, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->start:I

    iget v3, p1, Lcom/android/keyguard/TextInterpolator$FontRun;->start:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->end:I

    iget v3, p1, Lcom/android/keyguard/TextInterpolator$FontRun;->end:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->baseFont:Landroid/graphics/fonts/Font;

    iget-object v3, p1, Lcom/android/keyguard/TextInterpolator$FontRun;->baseFont:Landroid/graphics/fonts/Font;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->targetFont:Landroid/graphics/fonts/Font;

    iget-object p1, p1, Lcom/android/keyguard/TextInterpolator$FontRun;->targetFont:Landroid/graphics/fonts/Font;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getBaseFont()Landroid/graphics/fonts/Font;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 64
    iget-object p0, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->baseFont:Landroid/graphics/fonts/Font;

    return-object p0
.end method

.method public final getEnd()I
    .locals 0

    .line 63
    iget p0, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->end:I

    return p0
.end method

.method public final getLength()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->end:I

    iget p0, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->start:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getStart()I
    .locals 0

    .line 62
    iget p0, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->start:I

    return p0
.end method

.method public final getTargetFont()Landroid/graphics/fonts/Font;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 65
    iget-object p0, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->targetFont:Landroid/graphics/fonts/Font;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->start:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->end:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->baseFont:Landroid/graphics/fonts/Font;

    invoke-virtual {v1}, Landroid/graphics/fonts/Font;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->targetFont:Landroid/graphics/fonts/Font;

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setBaseFont(Landroid/graphics/fonts/Font;)V
    .locals 1
    .param p1    # Landroid/graphics/fonts/Font;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->baseFont:Landroid/graphics/fonts/Font;

    return-void
.end method

.method public final setTargetFont(Landroid/graphics/fonts/Font;)V
    .locals 1
    .param p1    # Landroid/graphics/fonts/Font;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->targetFont:Landroid/graphics/fonts/Font;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FontRun(start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", baseFont="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->baseFont:Landroid/graphics/fonts/Font;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targetFont="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->targetFont:Landroid/graphics/fonts/Font;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
