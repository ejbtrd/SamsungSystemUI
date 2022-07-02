.class Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils$ColorBucket;
.super Ljava/lang/Object;
.source "ExtractAppIconUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorBucket"
.end annotation


# instance fields
.field bestColor:I

.field bestMatchingColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBestColor()I
    .locals 0

    .line 130
    iget p0, p0, Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils$ColorBucket;->bestColor:I

    return p0
.end method

.method public getBestMatchingColor()I
    .locals 0

    .line 138
    iget p0, p0, Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils$ColorBucket;->bestMatchingColor:I

    return p0
.end method

.method public setBestColor(III)V
    .locals 0

    .line 134
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils$ColorBucket;->bestColor:I

    return-void
.end method

.method public setBestMatchingColor(III)V
    .locals 0

    .line 142
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils$ColorBucket;->bestMatchingColor:I

    return-void
.end method
