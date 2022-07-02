.class public Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ConversationIconFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/notification/ConversationIconFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConversationIconDrawable"
.end annotation


# instance fields
.field private mBadgeIcon:Landroid/graphics/drawable/Drawable;

.field private mBaseIcon:Landroid/graphics/drawable/Drawable;

.field private mIconSize:I

.field private mPaddingPaint:Landroid/graphics/Paint;

.field private mRingPaint:Landroid/graphics/Paint;

.field private mShowRing:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)V
    .locals 0

    .line 149
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mBaseIcon:Landroid/graphics/drawable/Drawable;

    .line 151
    iput-object p2, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    .line 152
    iput p3, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mIconSize:I

    .line 153
    iput-boolean p5, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mShowRing:Z

    .line 154
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mRingPaint:Landroid/graphics/Paint;

    .line 155
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 156
    iget-object p1, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mRingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mPaddingPaint:Landroid/graphics/Paint;

    .line 158
    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 159
    iget-object p0, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mPaddingPaint:Landroid/graphics/Paint;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 185
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42600000    # 56.0f

    div-float/2addr v0, v1

    .line 189
    invoke-static {}, Lcom/android/settingslib/notification/ConversationIconFactory;->access$000()F

    const/high16 v1, 0x42500000    # 52.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    const/high16 v2, 0x42100000    # 36.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 195
    invoke-static {}, Lcom/android/settingslib/notification/ConversationIconFactory;->access$100()F

    .line 196
    iget-object v2, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mBaseIcon:Landroid/graphics/drawable/Drawable;

    const-string v3, "ConversationIconFactory"

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    .line 197
    invoke-virtual {v2, v4, v4, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 201
    iget-object v2, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mBaseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    const-string v2, "ConversationIconDrawable has null base icon"

    .line 203
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 208
    invoke-virtual {v2, v0, v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 213
    iget-object p0, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_1
    const-string p0, "ConversationIconDrawable has null badge icon"

    .line 215
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 179
    iget p0, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mIconSize:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    .line 174
    iget p0, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mIconSize:I

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
