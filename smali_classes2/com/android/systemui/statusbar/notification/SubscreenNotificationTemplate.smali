.class public abstract Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;
.super Ljava/lang/Object;
.source "SubscreenNotificationTemplate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$Callback;
    }
.end annotation


# instance fields
.field private final BASE_GRAY_LEVEL:I

.field mAppPrimaryDefaultColor:I

.field mCallback:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$Callback;

.field mContext:Landroid/content/Context;

.field mLayout:Landroid/widget/FrameLayout;

.field mMarqueeText:Landroid/widget/TextView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field public mOnTouchListener:Landroid/view/View$OnTouchListener;

.field mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xcc

    .line 30
    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->BASE_GRAY_LEVEL:I

    .line 37
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 180
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->init()V

    return-void
.end method

.method private getAdjustedColor(I)I
    .locals 5

    .line 116
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 117
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 118
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->isBlackColor(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 121
    sget-boolean p1, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    if-eqz p1, :cond_0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$color;->subscreen_notification_primary_default_for_b2:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    .line 124
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mAppPrimaryDefaultColor:I

    return p0

    :cond_1
    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 130
    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    const/4 v0, 0x1

    .line 133
    aget v1, p1, v0

    const v2, 0x3e19999a    # 0.15f

    sub-float/2addr v1, v2

    aput v1, p1, v0

    .line 134
    aget v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x2

    .line 137
    aget v1, p1, v0

    const v4, 0x3e4ccccd    # 0.2f

    add-float/2addr v1, v4

    aput v1, p1, v0

    .line 138
    aget v1, p1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, p1, v0

    const/16 v0, 0xff

    .line 139
    invoke-static {v0, p1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    .line 142
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v0, v2

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/16 v1, 0xcc

    if-le v0, v1, :cond_2

    .line 145
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->getToneDownedColor(II)I

    move-result p0

    return p0

    :cond_2
    return p1
.end method

.method private getToneDownedColor(II)I
    .locals 5

    .line 152
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    .line 153
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 154
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 155
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 157
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p0

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float p2, p2

    int-to-float v2, v2

    div-float/2addr p2, v2

    int-to-float v0, v0

    mul-float/2addr v0, p2

    .line 160
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v1, v1

    mul-float/2addr v1, p2

    .line 161
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float p1, p1

    mul-float/2addr p2, p1

    .line 162
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 163
    invoke-static {p0, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private init()V
    .locals 2

    .line 57
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mTouchSlop:I

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->subscreen_notification_primary_default:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mAppPrimaryDefaultColor:I

    return-void
.end method

.method private isBlackColor(I)Z
    .locals 0

    .line 167
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p0

    if-nez p0, :cond_0

    .line 168
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result p0

    if-nez p0, :cond_0

    .line 169
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method adjustIconDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 84
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 85
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 86
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 87
    new-array v1, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 89
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 90
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :cond_0
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p1, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->getAdjustedColor(I)I

    move-result p0

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    return-object p1
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method abstract makeView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
.end method

.method abstract performClick()V
.end method

.method removeSpannableColor(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 106
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mAppPrimaryDefaultColor:I

    invoke-direct {v1, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 p0, 0x0

    .line 107
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 v2, 0x21

    .line 106
    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setCallback(Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$Callback;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mCallback:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$Callback;

    return-void
.end method

.method public startMarquee()V
    .locals 1

    .line 78
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mMarqueeText:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 79
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    return-void
.end method
