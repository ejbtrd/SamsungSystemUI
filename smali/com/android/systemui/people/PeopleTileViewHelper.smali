.class public Lcom/android/systemui/people/PeopleTileViewHelper;
.super Ljava/lang/Object;
.source "PeopleTileViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/people/PeopleTileViewHelper$RemoteViewsAndSizes;
    }
.end annotation


# static fields
.field private static final ANY_DOUBLE_MARK_PATTERN:Ljava/util/regex/Pattern;

.field private static final DOUBLE_EXCLAMATION_PATTERN:Ljava/util/regex/Pattern;

.field private static final DOUBLE_QUESTION_PATTERN:Ljava/util/regex/Pattern;

.field private static final EMOJI_CAKE:Ljava/lang/CharSequence;

.field private static final EMOJI_PATTERN:Ljava/util/regex/Pattern;

.field private static final MIXED_MARK_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mAppWidgetId:I

.field private mContext:Landroid/content/Context;

.field private mDensity:F

.field private mHeight:I

.field private mIntegerFormat:Ljava/text/NumberFormat;

.field private mIsLeftToRight:Z

.field private mKey:Lcom/android/systemui/people/widget/PeopleTileKey;

.field private mLayoutSize:I

.field private mLocale:Ljava/util/Locale;

.field private mTile:Landroid/app/people/PeopleSpaceTile;

.field private mWidth:I


# direct methods
.method public static synthetic $r8$lambda$03fLQFNH9zR5WBHusiSnejUjgD8(Landroid/app/people/ConversationStatus;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->lambda$getHasNewStory$4(Landroid/app/people/ConversationStatus;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$27vnLCwz8eG2hdMtANRmIFssoKE(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;ILcom/android/systemui/people/widget/PeopleTileKey;Landroid/util/SizeF;)Landroid/widget/RemoteViews;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/systemui/people/PeopleTileViewHelper;->lambda$createRemoteViews$0(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;ILcom/android/systemui/people/widget/PeopleTileKey;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JZy-TDHh4xSyzClZIoEMVG41tqY(Landroid/app/people/ConversationStatus;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->lambda$setCommonRemoteViewsFields$3(Landroid/app/people/ConversationStatus;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZEemqe9wBIF2mxVq-yu89jspVxw(Lcom/android/systemui/people/PeopleTileViewHelper;Landroid/app/people/ConversationStatus;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->lambda$getViewForTile$1(Landroid/app/people/ConversationStatus;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$e0vy-taytLwxzn2IGXwdLCpNByk(Lcom/android/systemui/people/PeopleTileViewHelper;Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/people/PeopleTileViewHelper;->lambda$resolveImage$5(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jk9uD-wWMD6EvmamOsyJpSEGT7g(Landroid/app/people/ConversationStatus;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->lambda$getViewForTile$2(Landroid/app/people/ConversationStatus;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$t4jIx4TR3ONP4yE5z9w_qpxzi3M(Landroid/app/people/ConversationStatus;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->lambda$getBirthdayStatus$6(Landroid/app/people/ConversationStatus;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "\ud83c\udf82"

    .line 137
    sput-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->EMOJI_CAKE:Ljava/lang/CharSequence;

    const-string v0, "[!][!]+"

    .line 139
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->DOUBLE_EXCLAMATION_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "[?][?]+"

    .line 140
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->DOUBLE_QUESTION_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "[!?][!?]+"

    .line 141
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->ANY_DOUBLE_MARK_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "![?].*|.*[?]!"

    .line 142
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->MIXED_MARK_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\\p{RI}\\p{RI}|(\\p{Emoji}(\\p{EMod}|\\x{FE0F}\\x{20E3}?|[\\x{E0020}-\\x{E007E}]+\\x{E007F})|[\\p{Emoji}&&\\p{So}])(\\x{200D}\\p{Emoji}(\\p{EMod}|\\x{FE0F}\\x{20E3}?|[\\x{E0020}-\\x{E007E}]+\\x{E007F})?)*"

    .line 177
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;IIILcom/android/systemui/people/widget/PeopleTileKey;)V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    .line 200
    iput-object p2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    .line 201
    iput-object p6, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mKey:Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 202
    iput p3, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mAppWidgetId:I

    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mDensity:F

    .line 204
    iput p4, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mWidth:I

    .line 205
    iput p5, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    .line 206
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLayoutSize()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    .line 207
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mIsLeftToRight:Z

    return-void
.end method

.method private buildStaticLayout(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout;
    .locals 2

    .line 1476
    :try_start_0
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1477
    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    .line 1478
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    const/4 v1, 0x0

    .line 1477
    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    const p2, 0x10301ad

    .line 1479
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 1480
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    .line 1482
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    int-to-float p3, p3

    invoke-direct {p0, p3}, Lcom/android/systemui/people/PeopleTileViewHelper;->dpToPx(F)I

    move-result p0

    .line 1481
    invoke-static {p1, v1, v0, p2, p0}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    .line 1487
    invoke-virtual {p0, v1}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    .line 1488
    invoke-virtual {p0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1490
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not create static layout: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PeopleTileView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static convertDrawableToDisabledBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1514
    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1515
    new-instance v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-direct {v0, p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 p0, 0x1

    .line 1516
    invoke-virtual {v0, p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setIsDisabled(Z)V

    .line 1517
    invoke-static {v0}, Lcom/android/systemui/people/PeopleSpaceUtils;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private createDndRemoteViews()Lcom/android/systemui/people/PeopleTileViewHelper$RemoteViewsAndSizes;
    .locals 16

    move-object/from16 v0, p0

    .line 622
    new-instance v6, Landroid/widget/RemoteViews;

    iget-object v1, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getViewForDndRemoteViews()I

    move-result v2

    invoke-direct {v6, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 624
    sget v1, Lcom/android/systemui/R$dimen;->avatar_size_for_medium_empty:I

    invoke-direct {v0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result v1

    .line 625
    sget v2, Lcom/android/systemui/R$dimen;->max_people_avatar_size:I

    invoke-direct {v0, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result v2

    .line 627
    iget-object v3, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->paused_by_dnd:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 628
    sget v4, Lcom/android/systemui/R$id;->text_content:I

    invoke-virtual {v6, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 631
    iget v5, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    .line 632
    sget v5, Lcom/android/systemui/R$dimen;->content_text_size_for_large:I

    goto :goto_0

    .line 633
    :cond_0
    sget v5, Lcom/android/systemui/R$dimen;->content_text_size_for_medium:I

    .line 634
    :goto_0
    iget-object v8, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    const/4 v9, 0x0

    .line 635
    invoke-virtual {v6, v4, v9, v8}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 636
    invoke-direct {v0, v5}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    move-result v8

    .line 639
    iget v10, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    const-string/jumbo v11, "setMaxLines"

    const/16 v12, 0x10

    const/4 v13, 0x1

    if-ne v10, v13, :cond_1

    .line 640
    iget v0, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    sub-int/2addr v0, v12

    .line 641
    div-int/2addr v0, v8

    invoke-virtual {v6, v4, v11, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_3

    :cond_1
    const/16 v10, 0xe

    int-to-float v12, v12

    .line 646
    invoke-direct {v0, v12}, Lcom/android/systemui/people/PeopleTileViewHelper;->dpToPx(F)I

    move-result v12

    int-to-float v10, v10

    .line 647
    invoke-direct {v0, v10}, Lcom/android/systemui/people/PeopleTileViewHelper;->dpToPx(F)I

    move-result v10

    .line 650
    iget v14, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    if-nez v14, :cond_2

    .line 651
    sget v14, Lcom/android/systemui/R$dimen;->regular_predefined_icon:I

    goto :goto_1

    .line 652
    :cond_2
    sget v14, Lcom/android/systemui/R$dimen;->largest_predefined_icon:I

    .line 649
    :goto_1
    invoke-direct {v0, v14}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result v14

    .line 653
    iget v15, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    add-int/lit8 v15, v15, -0x20

    sub-int/2addr v15, v14

    .line 654
    sget v13, Lcom/android/systemui/R$dimen;->padding_between_suppressed_layout_items:I

    .line 655
    invoke-direct {v0, v13}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result v13

    .line 656
    iget v9, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mWidth:I

    add-int/lit8 v9, v9, -0x20

    sub-int v1, v15, v1

    mul-int/2addr v13, v7

    sub-int/2addr v1, v13

    .line 660
    invoke-direct {v0, v3, v5, v9}, Lcom/android/systemui/people/PeopleTileViewHelper;->estimateTextHeight(Ljava/lang/CharSequence;II)I

    move-result v5

    if-gt v5, v1, :cond_3

    .line 661
    iget v9, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    if-ne v9, v7, :cond_3

    sub-int/2addr v15, v5

    sub-int/2addr v15, v13

    const/4 v3, 0x0

    .line 665
    invoke-virtual {v6, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 666
    div-int/2addr v1, v8

    invoke-virtual {v6, v4, v11, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 667
    sget v7, Lcom/android/systemui/R$id;->predefined_icon:I

    const/4 v1, 0x0

    invoke-virtual {v6, v7, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 668
    iget v1, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mWidth:I

    add-int/lit8 v1, v1, -0x20

    .line 671
    invoke-static {v1, v15}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/high16 v3, 0x41200000    # 10.0f

    .line 672
    invoke-direct {v0, v3}, Lcom/android/systemui/people/PeopleTileViewHelper;->dpToPx(F)I

    move-result v0

    .line 670
    invoke-static {v1, v0, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v8

    const/high16 v1, 0x1020000

    move-object v0, v6

    move v2, v12

    move v3, v10

    move v4, v12

    move v5, v12

    .line 674
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    int-to-float v0, v14

    const/4 v1, 0x1

    .line 680
    invoke-virtual {v6, v7, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutWidth(IFI)V

    .line 681
    invoke-virtual {v6, v7, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutHeight(IFI)V

    move v1, v8

    goto :goto_2

    .line 685
    :cond_3
    iget v1, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    if-eqz v1, :cond_4

    .line 686
    new-instance v6, Landroid/widget/RemoteViews;

    iget-object v1, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->people_tile_small:I

    invoke-direct {v6, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 688
    :cond_4
    invoke-direct {v0, v6}, Lcom/android/systemui/people/PeopleTileViewHelper;->getMaxAvatarSize(Landroid/widget/RemoteViews;)I

    move-result v0

    .line 689
    sget v1, Lcom/android/systemui/R$id;->messages_count:I

    const/16 v2, 0x8

    invoke-virtual {v6, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 690
    sget v1, Lcom/android/systemui/R$id;->name:I

    invoke-virtual {v6, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 693
    sget v1, Lcom/android/systemui/R$id;->predefined_icon:I

    invoke-virtual {v6, v1, v3}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    move v1, v0

    .line 695
    :goto_2
    sget v0, Lcom/android/systemui/R$id;->predefined_icon:I

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 696
    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_dnd_on:I

    invoke-virtual {v6, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 699
    :goto_3
    new-instance v0, Lcom/android/systemui/people/PeopleTileViewHelper$RemoteViewsAndSizes;

    invoke-direct {v0, v6, v1}, Lcom/android/systemui/people/PeopleTileViewHelper$RemoteViewsAndSizes;-><init>(Landroid/widget/RemoteViews;I)V

    return-object v0
.end method

.method private createLastInteractionRemoteViews()Landroid/widget/RemoteViews;
    .locals 9

    .line 1270
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getEmptyLayout()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1271
    sget v1, Lcom/android/systemui/R$id;->name:I

    const-string/jumbo v2, "setMaxLines"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1272
    iget v4, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-nez v4, :cond_0

    .line 1273
    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1274
    sget v4, Lcom/android/systemui/R$id;->predefined_icon:I

    invoke-virtual {v0, v4, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1275
    sget v4, Lcom/android/systemui/R$id;->messages_count:I

    invoke-virtual {v0, v4, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1277
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v4}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1278
    iget-object v4, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v4}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1280
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    .line 1281
    invoke-virtual {v7}, Landroid/app/people/PeopleSpaceTile;->getLastInteractionTimestamp()J

    move-result-wide v7

    .line 1280
    invoke-static {v4, v7, v8}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLastInteractionString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1284
    sget p0, Lcom/android/systemui/R$id;->last_interaction:I

    invoke-virtual {v0, p0, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1285
    invoke-virtual {v0, p0, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 1288
    :cond_2
    sget v4, Lcom/android/systemui/R$id;->last_interaction:I

    invoke-virtual {v0, v4, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1289
    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    if-ne p0, v3, :cond_3

    const/4 p0, 0x3

    .line 1290
    invoke-virtual {v0, v1, v2, p0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_3
    :goto_0
    return-object v0
.end method

.method private createMissedCallRemoteViews()Landroid/widget/RemoteViews;
    .locals 5

    .line 703
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 704
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLayoutForContent()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 703
    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->setViewForContentLayout(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 705
    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->setPredefinedIconVisible(Landroid/widget/RemoteViews;)V

    .line 706
    sget v1, Lcom/android/systemui/R$id;->text_content:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 707
    sget v3, Lcom/android/systemui/R$id;->messages_count:I

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 708
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->setMaxLines(Landroid/widget/RemoteViews;Z)V

    .line 709
    iget-object v2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v2}, Landroid/app/people/PeopleSpaceTile;->getNotificationContent()Ljava/lang/CharSequence;

    move-result-object v2

    .line 710
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 711
    iget-object v3, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v3}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/systemui/people/PeopleTileViewHelper;->setContentDescriptionForNotificationTextContent(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const v2, 0x1010543

    .line 715
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 716
    sget v1, Lcom/android/systemui/R$id;->predefined_icon:I

    sget v2, Lcom/android/systemui/R$drawable;->ic_phone_missed:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 717
    iget v2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 719
    sget v2, Lcom/android/systemui/R$dimen;->larger_predefined_icon:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewLayoutHeightDimen(II)V

    .line 720
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewLayoutWidthDimen(II)V

    .line 722
    :cond_0
    sget v1, Lcom/android/systemui/R$dimen;->availability_dot_notification_padding:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->setAvailabilityDotPadding(Landroid/widget/RemoteViews;I)V

    return-object v0
.end method

.method private createNotificationRemoteViews()Landroid/widget/RemoteViews;
    .locals 13

    .line 738
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 739
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLayoutForNotificationContent()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 738
    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->setViewForContentLayout(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 740
    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v1}, Landroid/app/people/PeopleSpaceTile;->getNotificationSender()Ljava/lang/CharSequence;

    move-result-object v1

    .line 741
    iget-object v2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v2}, Landroid/app/people/PeopleSpaceTile;->getNotificationDataUri()Landroid/net/Uri;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 743
    iget-object v6, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->new_notification_image_content_description:I

    new-array v8, v4, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    .line 744
    invoke-virtual {v9}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v8, v5

    .line 743
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 745
    sget v7, Lcom/android/systemui/R$id;->image:I

    invoke-virtual {v0, v7, v6}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 746
    invoke-virtual {v0, v7, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 747
    sget v8, Lcom/android/systemui/R$id;->text_content:I

    invoke-virtual {v0, v8, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 749
    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v8}, Lcom/android/systemui/people/PeopleTileViewHelper;->resolveImage(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 750
    invoke-static {v2}, Lcom/android/systemui/people/PeopleSpaceUtils;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 751
    invoke-virtual {v0, v7, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 753
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not decode image: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "PeopleTileView"

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    sget v2, Lcom/android/systemui/R$id;->text_content:I

    invoke-virtual {v0, v2, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 756
    invoke-virtual {v0, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 757
    sget v2, Lcom/android/systemui/R$id;->image:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 760
    :goto_0
    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/people/PeopleTileViewHelper;->setHalfLayout(Landroid/widget/RemoteViews;Z)V

    goto :goto_2

    .line 763
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->setMaxLines(Landroid/widget/RemoteViews;Z)V

    .line 764
    iget-object v2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v2}, Landroid/app/people/PeopleSpaceTile;->getNotificationContent()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v1, :cond_1

    move-object v6, v1

    goto :goto_1

    .line 766
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v6}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v6

    .line 765
    :goto_1
    invoke-direct {p0, v0, v2, v6}, Lcom/android/systemui/people/PeopleTileViewHelper;->setContentDescriptionForNotificationTextContent(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 767
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->decorateBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 770
    sget v2, Lcom/android/systemui/R$id;->text_content:I

    const/high16 v6, -0x1000000

    invoke-virtual {v0, v2, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 771
    iget-object v6, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v6}, Landroid/app/people/PeopleSpaceTile;->getNotificationContent()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 777
    sget v2, Lcom/android/systemui/R$id;->image:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 778
    sget v2, Lcom/android/systemui/R$id;->predefined_icon:I

    sget v6, Lcom/android/systemui/R$drawable;->ic_message:I

    invoke-virtual {v0, v2, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 780
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v2}, Landroid/app/people/PeopleSpaceTile;->getMessagesCount()I

    move-result v2

    if-le v2, v4, :cond_5

    .line 781
    iget v2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    if-ne v2, v4, :cond_4

    .line 782
    iget-object v2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/systemui/R$dimen;->before_messages_count_padding:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 784
    sget v8, Lcom/android/systemui/R$id;->name:I

    iget-boolean v4, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mIsLeftToRight:Z

    if-eqz v4, :cond_2

    move v9, v5

    goto :goto_3

    :cond_2
    move v9, v2

    :goto_3
    const/4 v10, 0x0

    if-eqz v4, :cond_3

    move v11, v2

    goto :goto_4

    :cond_3
    move v11, v5

    :goto_4
    const/4 v12, 0x0

    move-object v7, v0

    invoke-virtual/range {v7 .. v12}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 788
    :cond_4
    sget v2, Lcom/android/systemui/R$id;->messages_count:I

    invoke-virtual {v0, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 789
    iget-object v4, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    .line 790
    invoke-virtual {v4}, Landroid/app/people/PeopleSpaceTile;->getMessagesCount()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/systemui/people/PeopleTileViewHelper;->getMessagesCountText(I)Ljava/lang/String;

    move-result-object v4

    .line 789
    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 791
    iget v2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    if-nez v2, :cond_5

    .line 792
    sget v2, Lcom/android/systemui/R$id;->predefined_icon:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 795
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 796
    sget v2, Lcom/android/systemui/R$id;->subtext:I

    invoke-virtual {v0, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 797
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_5

    .line 799
    :cond_6
    sget v1, Lcom/android/systemui/R$id;->subtext:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 801
    :goto_5
    sget v1, Lcom/android/systemui/R$dimen;->availability_dot_notification_padding:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->setAvailabilityDotPadding(Landroid/widget/RemoteViews;I)V

    return-object v0
.end method

.method public static createRemoteViews(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;ILandroid/os/Bundle;Lcom/android/systemui/people/widget/PeopleTileKey;)Landroid/widget/RemoteViews;
    .locals 2

    .line 217
    invoke-static {p0, p3}, Lcom/android/systemui/people/PeopleTileViewHelper;->getWidgetSizes(Landroid/content/Context;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p3

    .line 220
    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    .line 221
    invoke-interface {p3}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p3

    .line 223
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p4}, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;ILcom/android/systemui/people/widget/PeopleTileKey;)V

    .line 222
    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 230
    new-instance p1, Landroid/widget/RemoteViews;

    invoke-direct {p1, p0}, Landroid/widget/RemoteViews;-><init>(Ljava/util/Map;)V

    return-object p1
.end method

.method private createStatusRemoteViews(Landroid/app/people/ConversationStatus;)Landroid/widget/RemoteViews;
    .locals 13

    .line 868
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 869
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLayoutForContent()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 868
    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->setViewForContentLayout(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 870
    invoke-virtual {p1}, Landroid/app/people/ConversationStatus;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 871
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 872
    invoke-virtual {p1}, Landroid/app/people/ConversationStatus;->getActivity()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getStatusTextByType(I)Ljava/lang/String;

    move-result-object v1

    .line 874
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->setPredefinedIconVisible(Landroid/widget/RemoteViews;)V

    .line 875
    sget v2, Lcom/android/systemui/R$id;->text_content:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 877
    invoke-virtual {p1}, Landroid/app/people/ConversationStatus;->getActivity()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    .line 878
    invoke-virtual {p1}, Landroid/app/people/ConversationStatus;->getActivity()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 879
    :cond_1
    sget-object v3, Lcom/android/systemui/people/PeopleTileViewHelper;->EMOJI_CAKE:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/people/PeopleTileViewHelper;->setEmojiBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    .line 882
    :cond_2
    invoke-virtual {p1}, Landroid/app/people/ConversationStatus;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    const/high16 v6, -0x1000000

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eqz v3, :cond_8

    .line 885
    sget v9, Lcom/android/systemui/R$id;->scrim_layout:I

    invoke-virtual {v0, v9, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 886
    sget v9, Lcom/android/systemui/R$id;->status_icon:I

    invoke-virtual {v0, v9, v3}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 888
    iget v10, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    const-string/jumbo v11, "setMaxLines"

    if-ne v10, v8, :cond_3

    .line 890
    sget v1, Lcom/android/systemui/R$id;->content:I

    const/16 v10, 0x50

    const-string/jumbo v12, "setGravity"

    invoke-virtual {v0, v1, v12, v10}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 891
    sget v1, Lcom/android/systemui/R$id;->name:I

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 895
    invoke-virtual {v0, v2, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 897
    invoke-virtual {v0, v2, v11, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_0

    :cond_3
    if-ne v10, v5, :cond_4

    .line 900
    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 901
    sget v6, Lcom/android/systemui/R$id;->name:I

    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 v1, 0x3

    .line 903
    invoke-virtual {v0, v6, v11, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 908
    :cond_4
    :goto_0
    invoke-virtual {p0, v0, v5}, Lcom/android/systemui/people/PeopleTileViewHelper;->setHalfLayout(Landroid/widget/RemoteViews;Z)V

    .line 909
    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v1}, Landroid/app/people/PeopleSpaceTile;->getTheme()I

    move-result v1

    .line 910
    iget-object v6, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v6}, Landroid/app/people/PeopleSpaceTile;->getTransparency()I

    .line 911
    iget-object v6, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v6}, Landroid/app/people/PeopleSpaceTile;->getWithNightMode()Z

    move-result v6

    .line 913
    iget-object v10, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-static {v10, v1}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingUtils;->getBackgroundColor(Landroid/content/Context;I)I

    move-result v1

    const/16 v10, 0xca

    if-eqz v6, :cond_5

    .line 916
    iget-object v6, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingUtils;->isNightModeEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 917
    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$color;->widget_dark_bg_color:I

    invoke-static {v1, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/16 v10, 0x99

    .line 920
    :cond_5
    iget v6, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    const v11, 0x3ef33333    # 0.475f

    if-ne v6, v5, :cond_6

    .line 921
    sget v6, Lcom/android/systemui/R$id;->half_widget_background:I

    iget v12, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mWidth:I

    int-to-float v12, v12

    mul-float/2addr v12, v11

    invoke-virtual {v0, v6, v12, v5}, Landroid/widget/RemoteViews;->setViewLayoutWidth(IFI)V

    .line 922
    sget v11, Lcom/android/systemui/R$drawable;->people_widget_half_content_background_medium:I

    invoke-virtual {v0, v6, v11}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    :cond_6
    if-ne v6, v8, :cond_7

    .line 924
    sget v6, Lcom/android/systemui/R$id;->half_widget_background:I

    iget v12, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    int-to-float v12, v12

    mul-float/2addr v12, v11

    invoke-virtual {v0, v6, v12, v5}, Landroid/widget/RemoteViews;->setViewLayoutHeight(IFI)V

    .line 925
    sget v11, Lcom/android/systemui/R$id;->person_icon:I

    sget v12, Lcom/android/systemui/R$dimen;->avatar_size_for_medium:I

    invoke-virtual {v0, v11, v12}, Landroid/widget/RemoteViews;->setViewLayoutWidthDimen(II)V

    .line 926
    invoke-virtual {v0, v11, v12}, Landroid/widget/RemoteViews;->setViewLayoutHeightDimen(II)V

    .line 927
    sget v11, Lcom/android/systemui/R$drawable;->people_widget_half_content_background_large:I

    invoke-virtual {v0, v6, v11}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 929
    :cond_7
    :goto_1
    sget v6, Lcom/android/systemui/R$id;->half_widget_background:I

    const-string/jumbo v11, "setColorFilter"

    invoke-virtual {v0, v6, v11, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const-string/jumbo v1, "setImageAlpha"

    .line 930
    invoke-virtual {v0, v6, v1, v10}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 931
    sget v1, Lcom/android/systemui/R$id;->people_widget_background:I

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string/jumbo v1, "setClipToOutline"

    .line 932
    invoke-virtual {v0, v9, v1, v5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    goto :goto_2

    .line 939
    :cond_8
    invoke-virtual {v0, v2, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 940
    invoke-direct {p0, v0, v7}, Lcom/android/systemui/people/PeopleTileViewHelper;->setMaxLines(Landroid/widget/RemoteViews;Z)V

    .line 942
    :goto_2
    sget v1, Lcom/android/systemui/R$dimen;->availability_dot_status_padding:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->setAvailabilityDotPadding(Landroid/widget/RemoteViews;I)V

    .line 943
    sget v1, Lcom/android/systemui/R$id;->predefined_icon:I

    invoke-direct {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getDrawableForStatus(Landroid/app/people/ConversationStatus;)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 945
    invoke-direct {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getContentDescriptionForStatus(Landroid/app/people/ConversationStatus;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 946
    iget-object v4, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->new_status_content_description:I

    new-array v9, v8, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    .line 947
    invoke-virtual {v10}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v7

    aput-object p1, v9, v5

    .line 946
    invoke-virtual {v4, v6, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 948
    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    if-eqz p0, :cond_c

    if-eq p0, v5, :cond_a

    if-eq p0, v8, :cond_9

    goto :goto_4

    .line 950
    :cond_9
    invoke-virtual {v0, v2, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_4

    :cond_a
    if-nez v3, :cond_b

    goto :goto_3

    .line 954
    :cond_b
    sget v2, Lcom/android/systemui/R$id;->name:I

    :goto_3
    invoke-virtual {v0, v2, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_4

    .line 958
    :cond_c
    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    :goto_4
    return-object v0
.end method

.method private createSuppressedView()Landroid/widget/RemoteViews;
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->isUserQuieted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->people_tile_work_profile_quiet_layout:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 347
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->people_tile_suppressed_layout:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 350
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->ic_conversation_icon:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 351
    invoke-static {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->convertDrawableToDisabledBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 352
    sget v1, Lcom/android/systemui/R$id;->icon:I

    invoke-virtual {v0, v1, p0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private decorateBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;
    .locals 3

    .line 1099
    invoke-virtual {p0, p2}, Lcom/android/systemui/people/PeopleTileViewHelper;->getDoubleEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1101
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->setEmojiBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    .line 1102
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->setPunctuationBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    return-object p1

    .line 1106
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/people/PeopleTileViewHelper;->getDoublePunctuation(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 1107
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->setEmojiBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    .line 1108
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/people/PeopleTileViewHelper;->setPunctuationBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    return-object p1
.end method

.method private dpToPx(F)I
    .locals 0

    .line 1496
    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mDensity:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private estimateTextHeight(Ljava/lang/CharSequence;II)I
    .locals 0

    .line 1457
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/people/PeopleTileViewHelper;->buildStaticLayout(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout;

    move-result-object p1

    if-nez p1, :cond_0

    const p0, 0x7fffffff

    return p0

    .line 1462
    :cond_0
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->pxToDp(F)I

    move-result p0

    return p0
.end method

.method private getBirthdayStatus(Ljava/util/List;)Landroid/app/people/ConversationStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationStatus;",
            ">;)",
            "Landroid/app/people/ConversationStatus;"
        }
    .end annotation

    .line 1043
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda6;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 1044
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    .line 1045
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/people/ConversationStatus;

    return-object p0

    .line 1048
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getBirthdayText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1049
    new-instance p1, Landroid/app/people/ConversationStatus$Builder;

    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getId()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Landroid/app/people/ConversationStatus$Builder;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/app/people/ConversationStatus$Builder;->build()Landroid/app/people/ConversationStatus;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getContentDescriptionForStatus(Landroid/app/people/ConversationStatus;)Ljava/lang/CharSequence;
    .locals 3

    .line 966
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 967
    invoke-virtual {p1}, Landroid/app/people/ConversationStatus;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 968
    invoke-virtual {p1}, Landroid/app/people/ConversationStatus;->getDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 970
    :cond_0
    invoke-virtual {p1}, Landroid/app/people/ConversationStatus;->getActivity()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    const-string p0, ""

    return-object p0

    .line 977
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->upcoming_birthday_status_content_description:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 982
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->location_status_content_description:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 984
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->game_status:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 986
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->video_status:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 988
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->audio_status:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 972
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->new_story_status_content_description:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 975
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->anniversary_status_content_description:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 980
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->birthday_status_content_description:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDrawableForStatus(Landroid/app/people/ConversationStatus;)I
    .locals 0

    .line 995
    invoke-virtual {p1}, Landroid/app/people/ConversationStatus;->getActivity()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 1013
    sget p0, Lcom/android/systemui/R$drawable;->ic_person:I

    return p0

    .line 1001
    :pswitch_0
    sget p0, Lcom/android/systemui/R$drawable;->ic_gift:I

    return p0

    .line 1005
    :pswitch_1
    sget p0, Lcom/android/systemui/R$drawable;->ic_location:I

    return p0

    .line 1007
    :pswitch_2
    sget p0, Lcom/android/systemui/R$drawable;->ic_play_games:I

    return p0

    .line 1009
    :pswitch_3
    sget p0, Lcom/android/systemui/R$drawable;->ic_video:I

    return p0

    .line 1011
    :pswitch_4
    sget p0, Lcom/android/systemui/R$drawable;->ic_music_note:I

    return p0

    .line 997
    :pswitch_5
    sget p0, Lcom/android/systemui/R$drawable;->ic_pages:I

    return p0

    .line 999
    :pswitch_6
    sget p0, Lcom/android/systemui/R$drawable;->ic_celebration:I

    return p0

    .line 1003
    :pswitch_7
    sget p0, Lcom/android/systemui/R$drawable;->ic_cake:I

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getEmptyLayout()I
    .locals 1

    .line 1298
    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 1305
    sget p0, Lcom/android/systemui/R$layout;->sec_people_tile_small:I

    return p0

    .line 1302
    :cond_0
    sget p0, Lcom/android/systemui/R$layout;->sec_people_tile_large_empty:I

    return p0

    .line 1300
    :cond_1
    sget p0, Lcom/android/systemui/R$layout;->sec_people_tile_medium_empty:I

    return p0
.end method

.method private static getHasNewStory(Landroid/app/people/PeopleSpaceTile;)Z
    .locals 1

    .line 581
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda4;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getLastInteractionString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PeopleTileView"

    const-string p1, "Could not get valid last interaction"

    .line 1426
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1429
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    .line 1430
    invoke-static {v2, v3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p1

    .line 1431
    invoke-virtual {p1}, Ljava/time/Duration;->toDays()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long p2, v2, v4

    if-gtz p2, :cond_1

    return-object v1

    .line 1433
    :cond_1
    invoke-virtual {p1}, Ljava/time/Duration;->toDays()J

    move-result-wide v0

    const-wide/16 v2, 0x7

    cmp-long p2, v0, v2

    if-gez p2, :cond_2

    .line 1434
    sget p2, Lcom/android/systemui/R$string;->days_timestamp:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1435
    invoke-virtual {p1}, Ljava/time/Duration;->toDays()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    .line 1434
    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1436
    :cond_2
    invoke-virtual {p1}, Ljava/time/Duration;->toDays()J

    move-result-wide v0

    cmp-long p2, v0, v2

    if-nez p2, :cond_3

    .line 1437
    sget p1, Lcom/android/systemui/R$string;->one_week_timestamp:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1438
    :cond_3
    invoke-virtual {p1}, Ljava/time/Duration;->toDays()J

    move-result-wide v0

    const-wide/16 v2, 0xe

    cmp-long p2, v0, v2

    if-gez p2, :cond_4

    .line 1439
    sget p1, Lcom/android/systemui/R$string;->over_one_week_timestamp:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1440
    :cond_4
    invoke-virtual {p1}, Ljava/time/Duration;->toDays()J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-nez p1, :cond_5

    .line 1441
    sget p1, Lcom/android/systemui/R$string;->two_weeks_timestamp:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1444
    :cond_5
    sget p1, Lcom/android/systemui/R$string;->over_two_weeks_timestamp:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLayoutForContent()I
    .locals 1

    .line 1346
    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 1353
    sget p0, Lcom/android/systemui/R$layout;->sec_people_tile_small:I

    return p0

    .line 1350
    :cond_0
    sget p0, Lcom/android/systemui/R$layout;->sec_people_tile_large_with_status_content:I

    return p0

    .line 1348
    :cond_1
    sget p0, Lcom/android/systemui/R$layout;->sec_people_tile_medium_with_content:I

    return p0
.end method

.method private getLayoutForNotificationContent()I
    .locals 1

    .line 1322
    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 1329
    sget p0, Lcom/android/systemui/R$layout;->sec_people_tile_small:I

    return p0

    .line 1326
    :cond_0
    sget p0, Lcom/android/systemui/R$layout;->sec_people_tile_large_with_notification_content:I

    return p0

    .line 1324
    :cond_1
    sget p0, Lcom/android/systemui/R$layout;->sec_people_tile_medium_with_content:I

    return p0
.end method

.method private getLayoutSize()I
    .locals 2

    .line 424
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    sget v1, Lcom/android/systemui/R$dimen;->required_height_for_large:I

    invoke-direct {p0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p0, 0x2

    return p0

    .line 428
    :cond_0
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mWidth:I

    sget v1, Lcom/android/systemui/R$dimen;->widget_min_width:I

    invoke-direct {p0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result v1

    if-gt v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 432
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Medium view for mWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PeopleTileView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private getLayoutSmallByHeight()I
    .locals 2

    .line 1381
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    sget v1, Lcom/android/systemui/R$dimen;->required_height_for_medium:I

    invoke-direct {p0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result p0

    if-lt v0, p0, :cond_0

    .line 1382
    sget p0, Lcom/android/systemui/R$layout;->people_tile_small:I

    return p0

    .line 1384
    :cond_0
    sget p0, Lcom/android/systemui/R$layout;->people_tile_small_horizontal:I

    return p0
.end method

.method private getLineHeightFromResource(I)I
    .locals 3

    .line 384
    :try_start_0
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 385
    iget-object v2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    .line 386
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 385
    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    const p1, 0x10301ad

    .line 387
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 388
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mDensity:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    div-float/2addr p1, p0

    float-to-int p0, p1

    return p0

    :catch_0
    move-exception p1

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not create text view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PeopleTileView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    sget p1, Lcom/android/systemui/R$dimen;->content_text_size_for_medium:I

    invoke-direct {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result p0

    return p0
.end method

.method private getMaxAvatarSize(Landroid/widget/RemoteViews;)I
    .locals 4

    .line 463
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result p1

    .line 464
    sget v0, Lcom/android/systemui/R$dimen;->avatar_size_for_medium:I

    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result v1

    .line 466
    sget v2, Lcom/android/systemui/R$layout;->sec_people_tile_medium_empty:I

    if-eq p1, v2, :cond_b

    sget v2, Lcom/android/systemui/R$layout;->sec_people_tile_medium_with_content:I

    if-ne p1, v2, :cond_0

    goto/16 :goto_1

    .line 470
    :cond_0
    sget v2, Lcom/android/systemui/R$layout;->sec_people_tile_large_empty:I

    if-eq p1, v2, :cond_a

    sget v2, Lcom/android/systemui/R$layout;->people_tile_large_with_notification_content:I

    if-eq p1, v2, :cond_a

    sget v3, Lcom/android/systemui/R$layout;->sec_people_tile_large_with_status_content:I

    if-eq p1, v3, :cond_a

    sget v3, Lcom/android/systemui/R$layout;->sec_people_tile_small:I

    if-ne p1, v3, :cond_1

    goto/16 :goto_0

    .line 478
    :cond_1
    sget v3, Lcom/android/systemui/R$layout;->people_tile_medium_empty:I

    if-ne p1, v3, :cond_2

    .line 479
    sget p1, Lcom/android/systemui/R$dimen;->max_people_avatar_size_for_large_content:I

    invoke-direct {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result p0

    return p0

    .line 482
    :cond_2
    sget v3, Lcom/android/systemui/R$layout;->people_tile_medium_with_content:I

    if-ne p1, v3, :cond_3

    .line 483
    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result p0

    return p0

    .line 487
    :cond_3
    sget v0, Lcom/android/systemui/R$layout;->people_tile_small:I

    if-ne p1, v0, :cond_4

    .line 488
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    sget v1, Lcom/android/systemui/R$dimen;->name_text_size_for_small:I

    .line 489
    invoke-direct {p0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    move-result v1

    const/16 v3, 0x12

    .line 488
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v3

    sub-int/2addr v0, v1

    .line 491
    iget v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mWidth:I

    add-int/lit8 v1, v1, -0x8

    .line 492
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 494
    :cond_4
    sget v0, Lcom/android/systemui/R$layout;->people_tile_small_horizontal:I

    if-ne p1, v0, :cond_5

    .line 495
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    add-int/lit8 v0, v0, -0xa

    .line 496
    iget v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mWidth:I

    add-int/lit8 v1, v1, -0x10

    .line 497
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_5
    if-ne p1, v2, :cond_6

    .line 501
    iget p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    sget v0, Lcom/android/systemui/R$dimen;->content_text_size_for_large:I

    .line 502
    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x3e

    sub-int/2addr p1, v0

    .line 505
    sget v0, Lcom/android/systemui/R$dimen;->max_people_avatar_size_for_large_content:I

    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 507
    :cond_6
    sget v0, Lcom/android/systemui/R$layout;->people_tile_large_with_status_content:I

    if-ne p1, v0, :cond_7

    .line 508
    iget p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    sget v0, Lcom/android/systemui/R$dimen;->content_text_size_for_large:I

    .line 509
    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x4c

    sub-int/2addr p1, v0

    .line 511
    sget v0, Lcom/android/systemui/R$dimen;->max_people_avatar_size_for_large_content:I

    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 515
    :cond_7
    sget v0, Lcom/android/systemui/R$layout;->people_tile_large_empty:I

    if-ne p1, v0, :cond_8

    .line 516
    iget p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    sget v0, Lcom/android/systemui/R$dimen;->name_text_size_for_large:I

    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1c

    sget v1, Lcom/android/systemui/R$dimen;->content_text_size_for_large:I

    .line 518
    invoke-direct {p0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x10

    sub-int/2addr p1, v0

    .line 520
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mWidth:I

    add-int/lit8 v0, v0, -0x1c

    .line 521
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 524
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-static {p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->isDndBlockingTileData(Landroid/app/people/PeopleSpaceTile;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    if-eqz p1, :cond_9

    .line 525
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->createDndRemoteViews()Lcom/android/systemui/people/PeopleTileViewHelper$RemoteViewsAndSizes;

    move-result-object p1

    iget v1, p1, Lcom/android/systemui/people/PeopleTileViewHelper$RemoteViewsAndSizes;->mAvatarSize:I

    .line 528
    :cond_9
    sget p1, Lcom/android/systemui/R$dimen;->max_people_avatar_size:I

    .line 529
    invoke-direct {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result p0

    .line 528
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 474
    :cond_a
    :goto_0
    sget p1, Lcom/android/systemui/R$dimen;->max_people_avatar_size_for_large_content:I

    invoke-direct {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result p0

    return p0

    .line 468
    :cond_b
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result p0

    return p0
.end method

.method private getMessagesCountText(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-lt p1, v1, :cond_0

    .line 852
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->messages_count_overflow_indicator:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 853
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 852
    invoke-virtual {p0, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 859
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 860
    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 861
    iput-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLocale:Ljava/util/Locale;

    .line 862
    invoke-static {v0}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mIntegerFormat:Ljava/text/NumberFormat;

    .line 864
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mIntegerFormat:Ljava/text/NumberFormat;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPersonIconBitmap(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;I)Landroid/graphics/Bitmap;
    .locals 1

    .line 1390
    invoke-static {p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getHasNewStory(Landroid/app/people/PeopleSpaceTile;)Z

    move-result v0

    .line 1391
    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getPersonIconBitmap(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static getPersonIconBitmap(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;IZ)Landroid/graphics/Bitmap;
    .locals 6

    .line 1397
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getUserIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1399
    sget p1, Lcom/android/systemui/R$drawable;->ic_avatar_with_badge:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 1400
    invoke-static {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->convertDrawableToDisabledBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 1402
    :cond_0
    new-instance v1, Lcom/android/systemui/people/PeopleStoryIconFactory;

    .line 1403
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 1404
    invoke-static {p0, v3}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;Z)Landroid/util/IconDrawableFactory;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, p2}, Lcom/android/systemui/people/PeopleStoryIconFactory;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/util/IconDrawableFactory;I)V

    .line 1407
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1406
    invoke-static {p0, p2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p0

    .line 1409
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->getUserId(Landroid/app/people/PeopleSpaceTile;)I

    move-result v3

    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->isImportantConversation()Z

    move-result v4

    move-object v0, v1

    move-object v1, p0

    move v5, p3

    .line 1408
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/people/PeopleStoryIconFactory;->getPeopleTileDrawable(Landroidx/core/graphics/drawable/RoundedBitmapDrawable;Ljava/lang/String;IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 1412
    invoke-static {p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->isDndBlockingTileData(Landroid/app/people/PeopleSpaceTile;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1414
    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 p2, 0x0

    .line 1415
    invoke-virtual {p1, p2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 1416
    new-instance p2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p2, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1419
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceUtils;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static getPowerOfTwoForSampleRatio(D)I
    .locals 0

    .line 816
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    const/4 p1, 0x1

    .line 817
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private getSizeInDp(I)I
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mDensity:F

    invoke-static {v0, p1, p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(Landroid/content/Context;IF)I

    move-result p0

    return p0
.end method

.method public static getSizeInDp(Landroid/content/Context;IF)I
    .locals 0

    .line 402
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    div-float/2addr p0, p2

    float-to-int p0, p0

    return p0
.end method

.method private getStatusTextByType(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p0, ""

    return-object p0

    .line 1080
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->upcoming_birthday_status:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1084
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->location_status:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1092
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->game_status:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1088
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->video_status:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1090
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->audio_status:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1086
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->new_story_status:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1082
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->anniversary_status:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1078
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->birthday_status:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getViewForDndRemoteViews()I
    .locals 2

    .line 1369
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1376
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLayoutSmallByHeight()I

    move-result p0

    return p0

    .line 1373
    :cond_0
    sget p0, Lcom/android/systemui/R$layout;->people_tile_with_suppression_detail_content_vertical:I

    return p0

    .line 1371
    :cond_1
    sget p0, Lcom/android/systemui/R$layout;->people_tile_with_suppression_detail_content_horizontal:I

    return p0
.end method

.method private getViewForTile()Landroid/widget/RemoteViews;
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->isPackageSuspended()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->isUserQuieted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-static {v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->isDndBlockingTileData(Landroid/app/people/PeopleSpaceTile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->createDndRemoteViews()Lcom/android/systemui/people/PeopleTileViewHelper$RemoteViewsAndSizes;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper$RemoteViewsAndSizes;->mRemoteViews:Landroid/widget/RemoteViews;

    return-object p0

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getNotificationCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "missed_call"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->createMissedCallRemoteViews()Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getNotificationKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 286
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->createNotificationRemoteViews()Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0

    .line 291
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/app/people/ConversationStatus;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 292
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    .line 291
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/people/PeopleTileViewHelper;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 292
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 293
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getBirthdayStatus(Ljava/util/List;)Landroid/app/people/ConversationStatus;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 296
    invoke-direct {p0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->createStatusRemoteViews(Landroid/app/people/ConversationStatus;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0

    .line 299
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 304
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda2;

    .line 305
    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    .line 304
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/people/ConversationStatus;

    .line 306
    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->createStatusRemoteViews(Landroid/app/people/ConversationStatus;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0

    .line 309
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->createLastInteractionRemoteViews()Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0

    .line 271
    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->createSuppressedView()Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method private static getWidgetSizes(Landroid/content/Context;Landroid/os/Bundle;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/SizeF;",
            ">;"
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const-string v1, "appWidgetSizes"

    .line 235
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 237
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 240
    :cond_0
    sget v1, Lcom/android/systemui/R$dimen;->default_width:I

    invoke-static {p0, v1, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(Landroid/content/Context;IF)I

    move-result v1

    .line 241
    sget v2, Lcom/android/systemui/R$dimen;->default_height:I

    invoke-static {p0, v2, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(Landroid/content/Context;IF)I

    move-result p0

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const-string v2, "appWidgetMinWidth"

    .line 244
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "appWidgetMaxHeight"

    .line 245
    invoke-virtual {p1, v3, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 246
    new-instance v4, Landroid/util/SizeF;

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-direct {v4, v2, v3}, Landroid/util/SizeF;-><init>(FF)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "appWidgetMaxWidth"

    .line 248
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "appWidgetMinHeight"

    .line 249
    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 250
    new-instance p1, Landroid/util/SizeF;

    int-to-float v1, v1

    int-to-float p0, p0

    invoke-direct {p1, v1, p0}, Landroid/util/SizeF;-><init>(FF)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static isDndBlockingTileData(Landroid/app/people/PeopleSpaceTile;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 315
    :cond_0
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getNotificationPolicyState()I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    return v0

    :cond_1
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    .line 322
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->isImportantConversation()Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    and-int/lit8 v2, v1, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_3

    .line 327
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getContactAffinity()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    return v0

    :cond_3
    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    .line 332
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getContactAffinity()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    .line 333
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getContactAffinity()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_5

    :cond_4
    return v0

    .line 338
    :cond_5
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->canBypassDnd()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isStatusValidForEntireStatusView(Landroid/app/people/ConversationStatus;)Z
    .locals 2

    .line 1062
    invoke-virtual {p1}, Landroid/app/people/ConversationStatus;->getActivity()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    .line 1070
    invoke-virtual {p1}, Landroid/app/people/ConversationStatus;->getDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1071
    invoke-virtual {p1}, Landroid/app/people/ConversationStatus;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private static synthetic lambda$createRemoteViews$0(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;ILcom/android/systemui/people/widget/PeopleTileKey;Landroid/util/SizeF;)Landroid/widget/RemoteViews;
    .locals 8

    .line 224
    new-instance v7, Lcom/android/systemui/people/PeopleTileViewHelper;

    .line 226
    invoke-virtual {p4}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    float-to-int v4, v0

    .line 227
    invoke-virtual {p4}, Landroid/util/SizeF;->getHeight()F

    move-result p4

    float-to-int v5, p4

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/people/PeopleTileViewHelper;-><init>(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;IIILcom/android/systemui/people/widget/PeopleTileKey;)V

    .line 229
    invoke-virtual {v7}, Lcom/android/systemui/people/PeopleTileViewHelper;->getViews()Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getBirthdayStatus$6(Landroid/app/people/ConversationStatus;)Z
    .locals 1

    .line 1044
    invoke-virtual {p0}, Landroid/app/people/ConversationStatus;->getActivity()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$getHasNewStory$4(Landroid/app/people/ConversationStatus;)Z
    .locals 1

    .line 582
    invoke-virtual {p0}, Landroid/app/people/ConversationStatus;->getActivity()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$getViewForTile$1(Landroid/app/people/ConversationStatus;)Z
    .locals 0

    .line 292
    invoke-direct {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->isStatusValidForEntireStatusView(Landroid/app/people/ConversationStatus;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getViewForTile$2(Landroid/app/people/ConversationStatus;)Ljava/lang/Long;
    .locals 2

    .line 305
    invoke-virtual {p0}, Landroid/app/people/ConversationStatus;->getStartTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$resolveImage$5(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 0

    .line 810
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/people/PeopleTileViewHelper;->onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    return-void
.end method

.method private static synthetic lambda$setCommonRemoteViewsFields$3(Landroid/app/people/ConversationStatus;)Z
    .locals 0

    .line 543
    invoke-virtual {p0}, Landroid/app/people/ConversationStatus;->getAvailability()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 5

    .line 822
    iget p3, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mWidth:I

    int-to-float p3, p3

    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    .line 823
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 822
    invoke-static {v1, p3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    .line 824
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    .line 825
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 824
    invoke-static {v1, v0, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    .line 826
    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 827
    invoke-static {p3, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-double v1, p0

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v1, v3

    double-to-int p0, v1

    if-ge p0, v0, :cond_0

    move v0, p0

    .line 831
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p0

    .line 832
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-le p0, v0, :cond_1

    int-to-float p0, p0

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p0, p2

    int-to-float p2, v0

    div-float/2addr p0, p2

    float-to-double p2, p0

    goto :goto_0

    :cond_1
    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    .line 836
    :goto_0
    invoke-static {p2, p3}, Lcom/android/systemui/people/PeopleTileViewHelper;->getPowerOfTwoForSampleRatio(D)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/ImageDecoder;->setTargetSampleSize(I)V

    return-void
.end method

.method private pxToDp(F)I
    .locals 0

    .line 1500
    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mDensity:F

    div-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private resolveImage(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 807
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    .line 808
    new-instance p2, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/people/PeopleTileViewHelper;)V

    .line 809
    invoke-static {p1, p2}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private setAvailabilityDotPadding(Landroid/widget/RemoteViews;I)V
    .locals 8

    .line 1022
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 1023
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->medium_content_padding_above_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1030
    sget v3, Lcom/android/systemui/R$id;->medium_content:I

    .line 1031
    iget-boolean p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mIsLeftToRight:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    move v4, p2

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    const/4 v5, 0x0

    if-eqz p0, :cond_1

    move v6, v0

    goto :goto_1

    :cond_1
    move v6, p2

    :goto_1
    move-object v2, p1

    .line 1030
    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    return-void
.end method

.method private setCommonRemoteViewsFields(Landroid/widget/RemoteViews;I)Landroid/widget/RemoteViews;
    .locals 10

    .line 535
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    if-nez v0, :cond_0

    return-object p1

    .line 539
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->updateWidgetStyle(Landroid/widget/RemoteViews;)V

    .line 541
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    .line 542
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda5;

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 547
    sget v0, Lcom/android/systemui/R$id;->availability:I

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 548
    iget-object v3, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->availability_dot_shown_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 550
    iget-object v4, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->person_available:I

    .line 551
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 550
    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 553
    :cond_2
    sget v0, Lcom/android/systemui/R$id;->availability:I

    const/16 v3, 0x8

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 554
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$dimen;->availability_dot_missing_padding:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 557
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    .line 559
    :goto_2
    sget v5, Lcom/android/systemui/R$id;->padding_before_availability:I

    if-eqz v0, :cond_4

    move v6, v3

    goto :goto_3

    :cond_4
    move v6, v2

    :goto_3
    const/4 v7, 0x0

    if-eqz v0, :cond_5

    move v8, v2

    goto :goto_4

    :cond_5
    move v8, v3

    :goto_4
    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 563
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-static {v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getHasNewStory(Landroid/app/people/PeopleSpaceTile;)Z

    move-result v0

    .line 564
    sget v3, Lcom/android/systemui/R$id;->person_icon:I

    iget-object v4, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    .line 565
    invoke-static {v4, v5, p2, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getPersonIconBitmap(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;IZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 564
    invoke-virtual {p1, v3, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    if-eqz v0, :cond_6

    .line 567
    iget-object p2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->new_story_status_content_description:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    .line 569
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v1, v2

    .line 568
    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 567
    invoke-virtual {p1, v3, p0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_5

    :cond_6
    const/4 p0, 0x0

    .line 571
    invoke-virtual {p1, v3, p0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    return-object p1

    :catch_0
    move-exception p0

    .line 575
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to set common fields: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "PeopleTileView"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private setContentDescriptionForNotificationTextContent(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 4

    .line 841
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->new_notification_text_content_description:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 p3, 0x1

    aput-object p2, v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 844
    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    if-nez p0, :cond_0

    sget p0, Lcom/android/systemui/R$id;->predefined_icon:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/systemui/R$id;->text_content:I

    .line 845
    :goto_0
    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private setEmojiBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;
    .locals 0

    .line 1113
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1114
    sget p0, Lcom/android/systemui/R$id;->emojis:I

    const/16 p2, 0x8

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object p1

    .line 1117
    :cond_0
    sget p0, Lcom/android/systemui/R$id;->emoji1:I

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1118
    sget p0, Lcom/android/systemui/R$id;->emoji2:I

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1119
    sget p0, Lcom/android/systemui/R$id;->emoji3:I

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1121
    sget p0, Lcom/android/systemui/R$id;->emojis:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object p1
.end method

.method private setLaunchIntents(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 4

    .line 586
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mKey:Lcom/android/systemui/people/widget/PeopleTileKey;

    invoke-static {v0}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid(Lcom/android/systemui/people/widget/PeopleTileKey;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    if-nez v0, :cond_0

    goto :goto_0

    .line 592
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/people/widget/LaunchConversationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x50808000

    .line 593
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "extra_tile_id"

    .line 598
    iget-object v2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mKey:Lcom/android/systemui/people/widget/PeopleTileKey;

    invoke-virtual {v2}, Lcom/android/systemui/people/widget/PeopleTileKey;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_package_name"

    .line 599
    iget-object v2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mKey:Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 600
    invoke-virtual {v2}, Lcom/android/systemui/people/widget/PeopleTileKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 599
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_user_handle"

    .line 601
    new-instance v2, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mKey:Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 602
    invoke-virtual {v3}, Lcom/android/systemui/people/widget/PeopleTileKey;->getUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 601
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 603
    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    if-eqz v1, :cond_1

    const-string v2, "extra_notification_key"

    .line 606
    invoke-virtual {v1}, Landroid/app/people/PeopleSpaceTile;->getNotificationKey()Ljava/lang/String;

    move-result-object v1

    .line 604
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/high16 v1, 0x1020000

    .line 608
    iget-object v2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mAppWidgetId:I

    const/high16 v3, 0xa000000

    invoke-static {v2, p0, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to add launch intents: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PeopleTileView"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object p1
.end method

.method private setMaxLines(Landroid/widget/RemoteViews;Z)V
    .locals 1

    .line 361
    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x5

    :cond_0
    if-eqz p2, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 379
    :cond_1
    sget p0, Lcom/android/systemui/R$id;->text_content:I

    const-string/jumbo p2, "setMaxLines"

    invoke-virtual {p1, p0, p2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method private setPredefinedIconVisible(Landroid/widget/RemoteViews;)V
    .locals 8

    .line 727
    sget v0, Lcom/android/systemui/R$id;->predefined_icon:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 728
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 729
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->before_predefined_icon_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 731
    sget v3, Lcom/android/systemui/R$id;->name:I

    iget-boolean p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mIsLeftToRight:Z

    if-eqz p0, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    const/4 v5, 0x0

    if-eqz p0, :cond_1

    move v6, v0

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    :cond_2
    return-void
.end method

.method private setPunctuationBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;
    .locals 0

    .line 1126
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1127
    sget p0, Lcom/android/systemui/R$id;->punctuations:I

    const/16 p2, 0x8

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object p1

    .line 1130
    :cond_0
    sget p0, Lcom/android/systemui/R$id;->punctuation1:I

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1131
    sget p0, Lcom/android/systemui/R$id;->punctuation2:I

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1132
    sget p0, Lcom/android/systemui/R$id;->punctuation3:I

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1133
    sget p0, Lcom/android/systemui/R$id;->punctuation4:I

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1134
    sget p0, Lcom/android/systemui/R$id;->punctuation5:I

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1135
    sget p0, Lcom/android/systemui/R$id;->punctuation6:I

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1137
    sget p0, Lcom/android/systemui/R$id;->punctuations:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object p1
.end method

.method private setViewForContentLayout(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 7

    const-string v0, ""

    .line 1208
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->decorateBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    move-result-object p1

    .line 1209
    sget v0, Lcom/android/systemui/R$id;->predefined_icon:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 1210
    sget v2, Lcom/android/systemui/R$id;->text_content:I

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 1211
    sget v3, Lcom/android/systemui/R$id;->name:I

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 1212
    sget v4, Lcom/android/systemui/R$id;->image:I

    invoke-virtual {p1, v4, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 1213
    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setAccessibilityTraversalAfter(II)V

    .line 1214
    iget v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-nez v1, :cond_0

    .line 1215
    invoke-virtual {p1, v0, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1216
    invoke-virtual {p1, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 1218
    :cond_0
    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1219
    invoke-virtual {p1, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1220
    invoke-virtual {p1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1221
    sget v1, Lcom/android/systemui/R$id;->subtext:I

    invoke-virtual {p1, v1, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1222
    invoke-virtual {p1, v4, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1223
    sget v1, Lcom/android/systemui/R$id;->scrim_layout:I

    invoke-virtual {p1, v1, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1225
    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/people/PeopleTileViewHelper;->setHalfLayout(Landroid/widget/RemoteViews;Z)V

    .line 1258
    :goto_0
    sget v1, Lcom/android/systemui/R$dimen;->regular_predefined_icon:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutHeightDimen(II)V

    .line 1259
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutWidthDimen(II)V

    .line 1261
    sget v0, Lcom/android/systemui/R$id;->messages_count:I

    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1262
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1263
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_1
    return-object p1
.end method

.method private updateWidgetStyle(Landroid/widget/RemoteViews;)V
    .locals 5

    .line 1522
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getTheme()I

    move-result v0

    .line 1523
    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v1}, Landroid/app/people/PeopleSpaceTile;->getTransparency()I

    move-result v1

    .line 1524
    iget-object v2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v2}, Landroid/app/people/PeopleSpaceTile;->getWithNightMode()Z

    move-result v2

    .line 1526
    iget-object v3, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingUtils;->isDarkFont(Landroid/content/Context;II)Z

    move-result v3

    .line 1528
    iget-object v4, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingUtils;->getBackgroundColor(Landroid/content/Context;I)I

    move-result v0

    .line 1529
    iget-object v4, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingUtils;->getTextFontColor(Landroid/content/Context;Z)I

    move-result v3

    rsub-int v1, v1, 0xff

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 1532
    iget-object v2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingUtils;->isNightModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1533
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->widget_dark_bg_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x99

    .line 1535
    iget-object p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, v4}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingUtils;->getTextFontColor(Landroid/content/Context;Z)I

    move-result v3

    .line 1538
    :cond_0
    sget p0, Lcom/android/systemui/R$id;->people_widget_background:I

    invoke-virtual {p1, p0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1539
    sget v2, Lcom/android/systemui/R$drawable;->people_space_tile_view_card:I

    invoke-virtual {p1, p0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const-string/jumbo v2, "setColorFilter"

    .line 1540
    invoke-virtual {p1, p0, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const-string/jumbo v0, "setImageAlpha"

    .line 1541
    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1543
    sget-object p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingUtils;->WIDGET_TEXT_VIEW_IDS:[I

    array-length v0, p0

    :goto_0
    if-ge v4, v0, :cond_1

    aget v1, p0, v4

    const-string/jumbo v2, "setTextColor"

    .line 1544
    invoke-virtual {p1, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method getDoubleEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1168
    sget-object p0, Lcom/android/systemui/people/PeopleTileViewHelper;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1175
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1176
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    .line 1177
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    .line 1178
    new-instance v4, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1179
    invoke-interface {p1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1183
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x2

    const/4 v2, 0x0

    if-ge p0, p1, :cond_1

    return-object v2

    :cond_1
    const/4 p0, 0x1

    .line 1187
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_3

    .line 1188
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    add-int/lit8 v3, p0, -0x1

    .line 1189
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 1192
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne p1, v4, :cond_2

    .line 1194
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1198
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    return-object v2
.end method

.method getDoublePunctuation(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1144
    sget-object p0, Lcom/android/systemui/people/PeopleTileViewHelper;->ANY_DOUBLE_MARK_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1147
    :cond_0
    sget-object p0, Lcom/android/systemui/people/PeopleTileViewHelper;->MIXED_MARK_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "!?"

    return-object p0

    .line 1150
    :cond_1
    sget-object p0, Lcom/android/systemui/people/PeopleTileViewHelper;->DOUBLE_QUESTION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1151
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const-string v1, "!"

    if-nez v0, :cond_2

    return-object v1

    .line 1154
    :cond_2
    sget-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->DOUBLE_EXCLAMATION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 1155
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const-string v2, "?"

    if-nez v0, :cond_3

    return-object v2

    .line 1159
    :cond_3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result p0

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    if-ge p0, p1, :cond_4

    return-object v2

    :cond_4
    return-object v1
.end method

.method getViews()Landroid/widget/RemoteViews;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 257
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getViewForTile()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 258
    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getMaxAvatarSize(Landroid/widget/RemoteViews;)I

    move-result v1

    .line 259
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->setCommonRemoteViewsFields(Landroid/widget/RemoteViews;I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 260
    invoke-direct {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->setLaunchIntents(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method public setHalfLayout(Landroid/widget/RemoteViews;Z)V
    .locals 8

    .line 1550
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->widget_main_content_padding_14dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1551
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 1552
    sget v1, Lcom/android/systemui/R$dimen;->widget_main_content_padding_image_end:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/systemui/R$dimen;->widget_main_content_padding_10dp:I

    .line 1551
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const-string/jumbo v0, "setMaxLines"

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 1555
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result p2

    sget v2, Lcom/android/systemui/R$layout;->sec_people_tile_medium_with_content:I

    const/4 v3, 0x0

    if-ne p2, v2, :cond_1

    .line 1556
    sget p2, Lcom/android/systemui/R$id;->image_content:I

    invoke-virtual {p1, p2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1557
    sget v2, Lcom/android/systemui/R$id;->name:I

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v0, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1559
    sget v0, Lcom/android/systemui/R$id;->main_content:I

    iget v2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mWidth:I

    int-to-float v2, v2

    const v3, 0x3ef33333    # 0.475f

    mul-float/2addr v2, v3

    invoke-virtual {p1, v0, v2, v1}, Landroid/widget/RemoteViews;->setViewLayoutWidth(IFI)V

    .line 1560
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mWidth:I

    int-to-float v0, v0

    const v2, 0x3f066666    # 0.525f

    mul-float/2addr v0, v2

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutWidth(IFI)V

    goto :goto_1

    .line 1561
    :cond_1
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result p2

    sget v0, Lcom/android/systemui/R$layout;->people_tile_large_with_notification_content:I

    if-ne p2, v0, :cond_4

    .line 1562
    sget p2, Lcom/android/systemui/R$id;->image_content:I

    invoke-virtual {p1, p2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1563
    sget v0, Lcom/android/systemui/R$id;->main_content:I

    iget v2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    invoke-virtual {p1, v0, v2, v1}, Landroid/widget/RemoteViews;->setViewLayoutHeight(IFI)V

    .line 1564
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutHeight(IFI)V

    goto :goto_1

    .line 1567
    :cond_2
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result p2

    sget v2, Lcom/android/systemui/R$layout;->sec_people_tile_medium_with_content:I

    const/16 v3, 0x8

    if-ne p2, v2, :cond_3

    .line 1568
    sget p2, Lcom/android/systemui/R$id;->image_content:I

    invoke-virtual {p1, p2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1569
    sget p2, Lcom/android/systemui/R$id;->name:I

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1571
    sget p2, Lcom/android/systemui/R$id;->main_content:I

    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mWidth:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutWidth(IFI)V

    goto :goto_1

    .line 1572
    :cond_3
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result p2

    sget v0, Lcom/android/systemui/R$layout;->people_tile_large_with_notification_content:I

    if-ne p2, v0, :cond_4

    .line 1573
    sget p2, Lcom/android/systemui/R$id;->image_content:I

    invoke-virtual {p1, p2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1574
    sget p2, Lcom/android/systemui/R$id;->main_content:I

    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutHeight(IFI)V

    .line 1575
    sget p2, Lcom/android/systemui/R$id;->person_icon:I

    sget v0, Lcom/android/systemui/R$dimen;->max_people_avatar_size_for_large_content:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewLayoutWidthDimen(II)V

    .line 1576
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewLayoutHeightDimen(II)V

    .line 1579
    :cond_4
    :goto_1
    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    if-ne p0, v1, :cond_5

    .line 1580
    sget v3, Lcom/android/systemui/R$id;->main_content:I

    const/4 v7, 0x0

    move-object v2, p1

    move v4, v5

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    :cond_5
    return-void
.end method
