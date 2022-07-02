.class final Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;
.super Ljava/lang/Object;
.source "BlueLightFilterTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/BlueLightFilterTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BlueLightFilterDetailAdapter"
.end annotation


# instance fields
.field private mAdaptable:Landroid/widget/LinearLayout;

.field private mAdaptiveClickListener:Landroid/view/View$OnClickListener;

.field private mCustom:Landroid/widget/TextView;

.field private mCustomClickListener:Landroid/view/View$OnClickListener;

.field private mDetailSummary:Landroid/widget/TextView;

.field private mEnableControlInSetting:Z

.field private final mLevelChangedListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

.field private mRadioAdaptive:Landroid/widget/RadioButton;

.field private mRadioAdaptiveContainer:Landroid/widget/LinearLayout;

.field private mRadioCustom:Landroid/widget/RadioButton;

.field private mRadioCustomContainer:Landroid/widget/LinearLayout;

.field private mRadioCustomSummary:Landroid/widget/TextView;

.field private mSlider:Landroidx/appcompat/widget/SeslSeekBar;

.field private mSliderTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;


# direct methods
.method public static synthetic $r8$lambda$a3lMcV__XpvYdDjUciaCmVPdwBE(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->lambda$createDetailView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zkpsQe79jcaA5HBmasv2ABnFJIA(Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->lambda$setToggleState$0(Z)V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 534
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mEnableControlInSetting:Z

    .line 535
    new-instance p1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mAdaptiveClickListener:Landroid/view/View$OnClickListener;

    .line 545
    new-instance p1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$2;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mCustomClickListener:Landroid/view/View$OnClickListener;

    .line 673
    new-instance p1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$3;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mLevelChangedListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Lcom/android/systemui/qs/tiles/BlueLightFilterTile$1;)V
    .locals 0

    .line 521
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;)Landroid/widget/RadioButton;
    .locals 0

    .line 521
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mRadioAdaptive:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;)Landroid/widget/RadioButton;
    .locals 0

    .line 521
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mRadioCustom:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;Z)V
    .locals 0

    .line 521
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->updateSeekBarThumb(Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;)Z
    .locals 0

    .line 521
    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mEnableControlInSetting:Z

    return p0
.end method

.method static synthetic access$3902(Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;Z)Z
    .locals 0

    .line 521
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mEnableControlInSetting:Z

    return p1
.end method

.method static synthetic access$4000(Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;)V
    .locals 0

    .line 521
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->setDisableOpacity()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;)Z
    .locals 0

    .line 521
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->isBeforeScheduleTime()Z

    move-result p0

    return p0
.end method

.method private createViews()V
    .locals 3

    .line 711
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TILE_BLUELIGHT_FILTER_ADAPTIVE_MODE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 712
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mAdaptable:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 713
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveBluelight()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mRadioAdaptive:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 715
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mRadioCustom:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mRadioAdaptive:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 718
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mRadioCustom:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 720
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mRadioCustomSummary:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->getRadioCustomSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mCustom:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 723
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mCustom:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->getCustomSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 3

    const/4 p0, 0x1

    new-array v0, p0, [[I

    const/4 v1, 0x0

    new-array v2, v1, [I

    aput-object v2, v0, v1

    .line 627
    new-instance v2, Landroid/content/res/ColorStateList;

    new-array p0, p0, [I

    aput p1, p0, v1

    invoke-direct {v2, v0, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private getCustomSummary()Ljava/lang/String;
    .locals 10

    .line 757
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getScheduledBluelightType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 759
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$5100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v4, 0x474

    const-string v6, "blue_light_filter_on_time"

    invoke-static {v0, v6, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 760
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$5200(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v6, 0x1a4

    const-string v8, "blue_light_filter_off_time"

    invoke-static {v0, v8, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 762
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$5500(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v8, Lcom/android/systemui/R$string;->bluelightfilter_custom_summary_cycle:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 763
    invoke-static {v9}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$5300(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p0, v9, v4, v5}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 764
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$5400(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v6, v7}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    .line 762
    invoke-virtual {v0, v8, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 766
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$5700(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->bluelightfilter_custom_summary:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 767
    invoke-static {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$5600(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object p0

    if-ne v0, v1, :cond_1

    sget v0, Lcom/android/systemui/R$string;->bluelightfilter_custom_auto_schedule:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/systemui/R$string;->bluelightfilter_custom_always:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    .line 766
    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private getRadioCustomSummary()Ljava/lang/String;
    .locals 6

    .line 740
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getScheduledBluelightType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 742
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$4500(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v1, 0x474

    const-string v3, "blue_light_filter_on_time"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 743
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$4600(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-wide/16 v3, 0x1a4

    const-string v5, "blue_light_filter_off_time"

    invoke-static {v2, v5, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 745
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$4700(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5, v0, v1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ~ "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$4800(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 747
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$4900(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->bluelightfilter_custom_auto_schedule:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 749
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$5000(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->bluelightfilter_custom_always:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private isBeforeScheduleTime()Z
    .locals 7

    .line 786
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$5800(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 787
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$5900(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "blue_light_filter_adaptive_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 788
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$6000(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "blue_light_filter_scheduled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 789
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$6100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "blue_light_filter_type"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v4, :cond_3

    if-nez v5, :cond_3

    move v6, v1

    goto :goto_3

    :cond_3
    move v6, v2

    :goto_3
    if-eqz v0, :cond_5

    if-nez v3, :cond_5

    if-eqz v4, :cond_5

    if-eqz v6, :cond_4

    goto :goto_4

    .line 794
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->duringScheduleTime(I)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    :goto_4
    return v2
.end method

.method private static synthetic lambda$createDetailView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 667
    const-class p0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isBlueLightFilterTileBlocked()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$setToggleState$0(Z)V
    .locals 0

    .line 598
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->setToggleState(Z)V

    return-void
.end method

.method private setDisableOpacity()V
    .locals 1

    .line 828
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$6300(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "mDNIe"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/4 v0, 0x0

    .line 829
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setNightMode(ZI)Z

    return-void
.end method

.method private setEnableOpacity(I)V
    .locals 1

    .line 811
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$6200(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "mDNIe"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/4 v0, 0x1

    .line 812
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setNightMode(ZI)Z

    return-void
.end method

.method private updateListener(Z)V
    .locals 4

    .line 728
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mRadioCustomContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mCustomClickListener:Landroid/view/View$OnClickListener;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 729
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mRadioCustomContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 730
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mRadioAdaptiveContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mAdaptiveClickListener:Landroid/view/View$OnClickListener;

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 731
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mRadioAdaptiveContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 732
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mDetailSummary:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 733
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mCustom:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 734
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mAdaptable:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private updateSeekBarThumb(Z)V
    .locals 2

    .line 617
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSlider:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v0, :cond_2

    .line 618
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 619
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSliderTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 620
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSlider:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$3100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$color;->qs_interval_seekbar_activated:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_1

    .line 621
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$3200(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$color;->tw_progress_color_control_deactivated_thumb:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 620
    :goto_1
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 638
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$3300(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$layout;->qs_detail_bluelightfilter:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 639
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    const/16 p3, 0x1f

    invoke-static {p2, p3}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$3400(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;I)V

    .line 641
    sget p2, Lcom/android/systemui/R$id;->bluelightfilter_summary:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mDetailSummary:Landroid/widget/TextView;

    .line 642
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {p3}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$3500(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/android/systemui/R$string;->quick_settings_ecs_detail_summary:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    sget p2, Lcom/android/systemui/R$id;->bluelightfilter_custom:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mCustom:Landroid/widget/TextView;

    .line 645
    sget p2, Lcom/android/systemui/R$id;->bluelightfilter_mode:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mAdaptable:Landroid/widget/LinearLayout;

    .line 646
    sget p2, Lcom/android/systemui/R$id;->bluelightfilter_mode_adaptive:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mRadioAdaptive:Landroid/widget/RadioButton;

    .line 647
    sget p2, Lcom/android/systemui/R$id;->bluelightfilter_mode_adaptive_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mRadioAdaptiveContainer:Landroid/widget/LinearLayout;

    .line 648
    sget p2, Lcom/android/systemui/R$id;->bluelightfilter_mode_custom:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mRadioCustom:Landroid/widget/RadioButton;

    .line 649
    sget p2, Lcom/android/systemui/R$id;->bluelightfilter_mode_custom_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mRadioCustomContainer:Landroid/widget/LinearLayout;

    .line 650
    sget p2, Lcom/android/systemui/R$id;->bluelightfilter_radio_custom_summary:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mRadioCustomSummary:Landroid/widget/TextView;

    .line 651
    sget p2, Lcom/android/systemui/R$id;->bluelightfilter_op_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSliderTitle:Landroid/widget/TextView;

    .line 652
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {p3}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$3600(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/android/systemui/R$string;->bluelightfilter_detail_seekbar:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->createViews()V

    .line 654
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$3700(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p2, p2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->updateListener(Z)V

    .line 655
    sget p2, Lcom/android/systemui/R$id;->bluelightfilter_op_slider:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SeslSeekBar;

    .line 656
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSlider:Landroidx/appcompat/widget/SeslSeekBar;

    if-eq p2, p3, :cond_0

    .line 657
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {p3}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p3

    const-string v0, "blue_light_filter_opacity"

    invoke-virtual {p3, v0}, Lcom/android/systemui/util/SettingsHelper;->getBlueLightFilterMode(Ljava/lang/String;)I

    move-result p3

    .line 658
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSlider:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 v0, 0x5

    .line 659
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMode(I)V

    .line 660
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSlider:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SeslProgressBar;->incrementProgressBy(I)V

    .line 661
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSlider:Landroidx/appcompat/widget/SeslSeekBar;

    const/16 v1, 0xa

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    .line 662
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSlider:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setSeamless(Z)V

    .line 663
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSlider:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 664
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$3800(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p2, p2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    sget-boolean p3, Lcom/android/systemui/QpRune;->QUICK_TILE_BLUELIGHT_FILTER_ADAPTIVE_MODE:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveBluelight()Z

    move-result v1

    and-int/2addr p3, v1

    xor-int/2addr p3, v0

    and-int/2addr p2, p3

    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->updateSeekBarThumb(Z)V

    .line 665
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSlider:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mLevelChangedListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    .line 666
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSlider:Landroidx/appcompat/widget/SeslSeekBar;

    sget-object p2, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-object p1
.end method

.method public duringScheduleTime(I)Z
    .locals 6

    .line 844
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 845
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v1, v0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 851
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$6400(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-wide/16 v2, 0x474

    const-string v4, "blue_light_filter_on_time"

    const/4 v5, -0x2

    invoke-static {p1, v4, v2, v3, v5}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int p1, v2

    .line 852
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$6500(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-wide/16 v2, 0x1a4

    const-string v4, "blue_light_filter_off_time"

    invoke-static {p0, v4, v2, v3, v5}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int p0, v2

    goto :goto_0

    .line 854
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$6600(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/16 v2, 0x474

    const-string v3, "blue_light_filter_automatic_on_time"

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 855
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$6700(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 v2, 0x1a4

    const-string v3, "blue_light_filter_automatic_off_time"

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    :goto_0
    const/4 v2, 0x0

    if-ge p1, p0, :cond_2

    if-gt p1, v1, :cond_1

    if-ge v1, p0, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    if-ltz v1, :cond_4

    if-lt v1, p0, :cond_3

    if-lt v1, p1, :cond_4

    :cond_3
    return v0

    :cond_4
    return v2
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x138e

    return p0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 0

    .line 576
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p2, v0

    if-ltz p0, :cond_0

    const-wide/16 v0, 0x5a0

    cmp-long p0, p2, v0

    if-gez p0, :cond_0

    .line 775
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/16 v0, 0xb

    long-to-int p2, p2

    .line 776
    div-int/lit8 p3, p2, 0x3c

    invoke-virtual {p0, v0, p3}, Ljava/util/Calendar;->set(II)V

    const/16 p3, 0xc

    .line 777
    rem-int/lit8 p2, p2, 0x3c

    invoke-virtual {p0, p3, p2}, Ljava/util/Calendar;->set(II)V

    .line 778
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 780
    :cond_0
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 564
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 565
    invoke-static {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$2100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->quick_settings_eyecomfortshield_detail_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 0

    .line 571
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$2200(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public setOpacityLevel(I)V
    .locals 1

    .line 802
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mEnableControlInSetting:Z

    if-eqz v0, :cond_0

    .line 803
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->setEnableOpacity(I)V

    goto :goto_0

    .line 805
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    const-string v0, "blue_light_filter_opacity"

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/util/SettingsHelper;->setBlueLightFilterMode(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public setToggleState(Z)V
    .locals 7

    .line 581
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isBlueLightFilterTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$2300(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V

    .line 583
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$2400(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "setToggleState blocked"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    return-void

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getLocationMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 588
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$2500(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "blue_light_filter_type"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 589
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$2600(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 590
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$2700(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 591
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$2700(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$2700(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 592
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    if-ne v3, v5, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    .line 595
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$2800(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v4, v4, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v4, :cond_2

    .line 596
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$2900(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/qs/QSHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    .line 597
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$3000(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;Z)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    .line 602
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-virtual {v4, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    if-nez v0, :cond_5

    .line 603
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TILE_BLUELIGHT_FILTER_ADAPTIVE_MODE:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveBluelight()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    if-ne v3, v5, :cond_5

    if-nez p1, :cond_4

    .line 605
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$1500(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Z)V

    goto :goto_1

    .line 607
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v0, v2}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$2000(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;I)V

    goto :goto_1

    .line 610
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$1500(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Z)V

    .line 612
    :goto_1
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TILE_BLUELIGHT_FILTER_ADAPTIVE_MODE:Z

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveBluelight()Z

    move-result v2

    and-int/2addr v0, v2

    xor-int/2addr v0, v1

    and-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->updateSeekBarThumb(Z)V

    .line 613
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->updateListener(Z)V

    return-void
.end method

.method public updateOpacity(I)V
    .locals 3

    .line 700
    invoke-static {}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$4300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$4400(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateOpacity( progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ) caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->mSlider:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    return-void
.end method
