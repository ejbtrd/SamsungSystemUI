.class public Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;
.super Landroid/app/Activity;
.source "PeopleSpaceWidgetSettingActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity$RadioGroupCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mAppWidgetId:I

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mBlackButton:Landroid/widget/RadioButton;

.field private mCancel:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCurrentTransparentTextView:Landroid/widget/TextView;

.field private mDone:Landroid/widget/TextView;

.field private mNightModeSwitch:Landroid/widget/Switch;

.field private mNotificationManager:Landroid/app/INotificationManager;

.field private mPeopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

.field private mPreviewFrame:Landroid/view/ViewGroup;

.field private mPreviewTile:Landroid/app/people/PeopleSpaceTile;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarText:Landroid/widget/TextView;

.field private mTheme:I

.field private mTransparency:I

.field private mWhiteButton:Landroid/widget/RadioButton;

.field private mWithNightMode:Z


# direct methods
.method public static synthetic $r8$lambda$Mp24Oxygq6g8oJMq1pfaoVfaPeI(Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->lambda$initLayout$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RrEcNgh1AMWijUIfkVnK4uOPfhs(Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->lambda$initLayout$1(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$cbIZSxNADCzf9pS2gRuhMxiwkFw(Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->lambda$initLayout$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tVjKwIGjpsBoTDnc3T1vt3smsLY(Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->lambda$initLayout$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mAppWidgetId:I

    .line 72
    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mPeopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mTheme:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->updatePreview()V

    return-void
.end method

.method private checkNightModeAndDarkMode()V
    .locals 5

    .line 198
    iget-object v0, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->widget_setting_disable_text_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 199
    iget-object v1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->widget_setting_title_text_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 201
    iget-boolean v2, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mWithNightMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingUtils;->isNightModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 205
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mWhiteButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 206
    iget-object v3, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mBlackButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 207
    iget-object v3, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 209
    iget-object v3, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mWhiteButton:Landroid/widget/RadioButton;

    if-eqz v2, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 210
    iget-object v3, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mBlackButton:Landroid/widget/RadioButton;

    if-eqz v2, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v0

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 211
    iget-object p0, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mSeekBarText:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private drawPreview()V
    .locals 2

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->getPreviewFrame()Landroid/view/ViewGroup;

    .line 107
    iget-object v0, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mPreviewTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getId()Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mPreviewTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getUserHandle()Landroid/os/UserHandle;

    .line 109
    iget-object p0, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mPreviewTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    .line 110
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "appWidgetMinWidth"

    const/4 v1, -0x1

    .line 111
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "appWidgetMinHeight"

    .line 112
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private getCurrentTransparentText(I)Ljava/lang/String;
    .locals 3

    .line 308
    invoke-static {}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->isUseArabianNumberInRtl()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "% "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->getTransparencyForSeekBar()I

    move-result p0

    mul-int/lit8 p0, p0, 0xa

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 309
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->getTransparencyForSeekBar()I

    move-result p0

    mul-int/lit8 p0, p0, 0xa

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "%"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getPreviewFrame()Landroid/view/ViewGroup;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mPreviewFrame:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 121
    sget v0, Lcom/android/systemui/R$id;->widget_preview:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mPreviewFrame:Landroid/view/ViewGroup;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mPreviewFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 124
    iget-object p0, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mPreviewFrame:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private getTransparencyForSeekBar()I
    .locals 4

    .line 313
    iget v0, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mTransparency:I

    rsub-int v0, v0, 0xff

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0xa

    int-to-double v0, v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTransparencyForSeekBar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mTransparency:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PeopleSpaceWidgetSettingActivity"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private initLayout()V
    .locals 5

    .line 137
    sget v0, Lcom/android/systemui/R$id;->widget_bottom_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 139
    sget v1, Lcom/android/systemui/R$id;->widget_setting_select_conversation:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 140
    new-instance v2, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    sget v1, Lcom/android/systemui/R$id;->radio_white:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mWhiteButton:Landroid/widget/RadioButton;

    .line 151
    sget v1, Lcom/android/systemui/R$id;->radio_black:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mBlackButton:Landroid/widget/RadioButton;

    .line 152
    iget v2, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mTheme:I

    sget v3, Lcom/android/systemui/people/PeopleSpaceWidgetSettingUtils;->THEME_WHITE:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mWhiteButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 158
    :goto_0
    sget v1, Lcom/android/systemui/R$id;->radioGroup:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 159
    new-instance v1, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity$RadioGroupCheckedChangeListener;

    iget-object v2, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mWhiteButton:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mBlackButton:Landroid/widget/RadioButton;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity$RadioGroupCheckedChangeListener;-><init>(Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 162
    sget v0, Lcom/android/systemui/R$id;->widget_setting_seek_bar_text:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mCurrentTransparentTextView:Landroid/widget/TextView;

    .line 163
    iget v2, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mTransparency:I

    invoke-direct {p0, v2}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->getCurrentTransparentText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mCurrentTransparentTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const-string v3, "100 %"

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setWidth(I)V

    .line 166
    sget v1, Lcom/android/systemui/R$id;->widget_setting_seek_bar:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mSeekBar:Landroid/widget/SeekBar;

    .line 167
    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 168
    iget-object v1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->getTransparencyForSeekBar()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 169
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mSeekBarText:Landroid/widget/TextView;

    .line 172
    sget v0, Lcom/android/systemui/R$id;->switchNightModeText:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mNightModeSwitch:Landroid/widget/Switch;

    .line 173
    iget-boolean v1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mWithNightMode:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mNightModeSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 182
    sget v0, Lcom/android/systemui/R$id;->cancelText:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mCancel:Landroid/widget/TextView;

    .line 183
    new-instance v1, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    sget v0, Lcom/android/systemui/R$id;->saveText:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mDone:Landroid/widget/TextView;

    .line 188
    new-instance v1, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->checkNightModeAndDarkMode()V

    return-void
.end method

.method private initPreferences()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mPreviewTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getTheme()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mTheme:I

    .line 130
    iget-object v0, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mPreviewTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getTransparency()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mTransparency:I

    .line 131
    iget-object v0, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mPreviewTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getWithNightMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mWithNightMode:Z

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "widgetId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " theme:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mTheme:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mTransparency:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mTransparency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mWithNightMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mWithNightMode:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PeopleSpaceWidgetSettingActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isUseArabianNumberInRtl()Z
    .locals 2

    .line 319
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private synthetic lambda$initLayout$0(Landroid/view/View;)V
    .locals 2

    .line 141
    iget-object p1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 142
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.systemui.people.PeopleSpaceActivity"

    .line 143
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    iget p1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mAppWidgetId:I

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$initLayout$1(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PeopleSpaceWidgetSettingActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iput-boolean p2, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mWithNightMode:Z

    .line 177
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->checkNightModeAndDarkMode()V

    .line 178
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->updatePreview()V

    return-void
.end method

.method private synthetic lambda$initLayout$2(Landroid/view/View;)V
    .locals 0

    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$initLayout$3(Landroid/view/View;)V
    .locals 0

    .line 189
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->sendBroadcastForWidget()V

    .line 190
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private sendBroadcastForWidget()V
    .locals 3

    .line 215
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 216
    iget-object v1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.systemui.people.ACTION_WIDGET_SETTING_CHANGED"

    .line 217
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    iget v1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mAppWidgetId:I

    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    iget v1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mTheme:I

    const-string/jumbo v2, "widget_theme"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    iget v1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mTransparency:I

    const-string/jumbo v2, "widget_transparency"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    iget-boolean v1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mWithNightMode:Z

    const-string/jumbo v2, "widget_with_night_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 222
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private updatePreview()V
    .locals 6

    const-string v0, "PeopleSpaceWidgetSettingActivity"

    const-string/jumbo v1, "updatePreview: "

    .line 250
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mPreviewFrame:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 255
    :cond_0
    iget v0, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mTheme:I

    iget v1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mTransparency:I

    invoke-static {p0, v0, v1}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingUtils;->isDarkFont(Landroid/content/Context;II)Z

    move-result v0

    .line 258
    iget-object v1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mPreviewFrame:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->people_widget_background:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 259
    iget v2, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mTheme:I

    invoke-static {p0, v2}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingUtils;->getBackgroundColor(Landroid/content/Context;I)I

    move-result v2

    .line 260
    invoke-static {p0, v0}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingUtils;->getTextFontColor(Landroid/content/Context;Z)I

    move-result v0

    .line 261
    iget v3, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mTransparency:I

    rsub-int v3, v3, 0xff

    .line 263
    iget-boolean v4, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mWithNightMode:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingUtils;->isNightModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 264
    sget v0, Lcom/android/systemui/R$color;->widget_dark_bg_color:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    const/16 v3, 0x99

    .line 266
    invoke-static {p0, v5}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingUtils;->getTextFontColor(Landroid/content/Context;Z)I

    move-result v0

    .line 269
    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 270
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 272
    sget-object v1, Lcom/android/systemui/people/PeopleSpaceWidgetSettingUtils;->WIDGET_TEXT_VIEW_IDS:[I

    array-length v2, v1

    :goto_0
    if-ge v5, v2, :cond_3

    aget v3, v1, v5

    .line 273
    iget-object v4, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mPreviewFrame:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 274
    iget-object v4, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mPreviewFrame:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    const-string p1, "notification"

    .line 82
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 81
    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mNotificationManager:Landroid/app/INotificationManager;

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "appWidgetId"

    const/4 v1, 0x0

    .line 85
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mAppWidgetId:I

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate: AppWidgetId - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mAppWidgetId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PeopleSpaceWidgetSettingActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object p1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mPeopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    iget v0, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mAppWidgetId:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->getTileForExistingWidget(I)Landroid/app/people/PeopleSpaceTile;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mPreviewTile:Landroid/app/people/PeopleSpaceTile;

    .line 91
    sget p1, Lcom/android/systemui/R$layout;->people_space_widget_setting:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 93
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->initPreferences()V

    .line 94
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->initLayout()V

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->drawPreview()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 283
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgressChanged() called with: seekBar = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], progress = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], fromUser = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "PeopleSpaceWidgetSettingActivity"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    int-to-double v0, p2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v2

    sub-double/2addr v2, v0

    double-to-int p1, v2

    .line 292
    iput p1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mTransparency:I

    .line 293
    iget-object p1, p0, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->mCurrentTransparentTextView:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->getCurrentTransparentText(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    invoke-direct {p0}, Lcom/android/systemui/people/PeopleSpaceWidgetSettingActivity;->updatePreview()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
