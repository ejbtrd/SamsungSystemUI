.class public final Lcom/android/systemui/statusbar/NotificationShelfManager;
.super Ljava/lang/Object;
.source "NotificationShelfManager.kt"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field private final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isfullyExpanded:Z

.field private mClearAllButton:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mIconContainerPaddingEnd:I

.field private mNotiSettingButton:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mShelfTextArea:Landroid/widget/LinearLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private notificationPanelController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final settingsValueList:[Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private shelf:Lcom/android/systemui/statusbar/NotificationShelf;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private statusBarState:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/SettingsHelper;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 2
    .param p1    # Lcom/android/systemui/util/SettingsHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/policy/ConfigurationController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "settingsHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 34
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    .line 35
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/net/Uri;

    const-string p3, "emergency_mode"

    .line 76
    invoke-static {p3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p2, v0

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->settingsValueList:[Landroid/net/Uri;

    .line 79
    array-length p3, p2

    new-array p3, p3, [Landroid/net/Uri;

    array-length v1, p2

    invoke-static {p2, v0, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1, p0, p3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public static final synthetic access$getIsfullyExpanded$p(Lcom/android/systemui/statusbar/NotificationShelfManager;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->isfullyExpanded:Z

    return p0
.end method

.method public static final synthetic access$getMClearAllButton$p(Lcom/android/systemui/statusbar/NotificationShelfManager;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$getMNotiSettingButton$p(Lcom/android/systemui/statusbar/NotificationShelfManager;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mNotiSettingButton:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$setIsfullyExpanded$p(Lcom/android/systemui/statusbar/NotificationShelfManager;Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->isfullyExpanded:Z

    return-void
.end method

.method private final setButtonContentDescription()V
    .locals 6

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->accessibility_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getResources().getString(R.string.accessibility_button)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->noti_setting_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getResources().getString(R.string.noti_setting_text)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->clear_all_text:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "context.getResources().getString(R.string.clear_all_text)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mNotiSettingButton:Landroid/widget/TextView;

    const/16 v4, 0x2c

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 197
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Landroid/widget/TextView;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private final setNotiSettingsEnabled(Z)V
    .locals 1

    .line 162
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mNotiSettingButton:Landroid/widget/TextView;

    if-nez p0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 164
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 166
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    :cond_1
    const p1, 0x3e99999a    # 0.3f

    .line 168
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final getHeightDimen()I
    .locals 0

    .line 83
    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-eqz p0, :cond_0

    .line 84
    sget p0, Lcom/android/systemui/R$dimen;->sec_notification_shelf_height_tablet:I

    return p0

    .line 87
    :cond_0
    sget p0, Lcom/android/systemui/R$dimen;->sec_notification_shelf_height:I

    return p0
.end method

.method public final getIconPadding()I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mShelfTextArea:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mIconContainerPaddingEnd:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final getNotificationPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->notificationPanelController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    return-object p0
.end method

.method public final getShelfLayoutID()I
    .locals 0

    .line 158
    sget p0, Lcom/android/systemui/R$layout;->sec_status_bar_notification_shelf:I

    return p0
.end method

.method public onChanged(Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 259
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelfManager;->updateNotiSettingOnShelf()V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 238
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onConfigChanged(Landroid/content/res/Configuration;)V

    .line 239
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelfManager;->setButtonContentDescription()V

    .line 241
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mNotiSettingButton:Landroid/widget/TextView;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/R$string;->noti_setting_text:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 242
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Landroid/widget/TextView;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    sget v0, Lcom/android/systemui/R$string;->clear_all_text:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 244
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mNotiSettingButton:Landroid/widget/TextView;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->sec_show_button_background_state_hide:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 245
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Landroid/widget/TextView;

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->sec_show_button_background_state_hide:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 7

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->shelf:Lcom/android/systemui/statusbar/NotificationShelf;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 210
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelfManager;->getHeightDimen()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 211
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->shelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mShelfTextArea:Landroid/widget/LinearLayout;

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :goto_3
    if-nez v0, :cond_4

    goto :goto_4

    .line 213
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelfManager;->getHeightDimen()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 214
    :goto_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mShelfTextArea:Landroid/widget/LinearLayout;

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mNotiSettingButton:Landroid/widget/TextView;

    if-nez v0, :cond_6

    move-object v0, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :goto_6
    const-string/jumbo v2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 216
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 217
    sget v4, Lcom/android/systemui/R$dimen;->bottom_bar_button_height:I

    .line 216
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 218
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 219
    sget v5, Lcom/android/systemui/R$dimen;->bottom_bar_first_button_right_margin:I

    .line 218
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 220
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mNotiSettingButton:Landroid/widget/TextView;

    if-nez v3, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mNotiSettingButton:Landroid/widget/TextView;

    const/4 v3, 0x0

    if-nez v0, :cond_8

    goto :goto_8

    .line 222
    :cond_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$dimen;->bottom_bar_button_text_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 221
    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 223
    :goto_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Landroid/widget/TextView;

    if-nez v0, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :goto_9
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 227
    sget v2, Lcom/android/systemui/R$dimen;->bottom_bar_second_button_right_margin:I

    .line 226
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Landroid/widget/TextView;

    if-nez v0, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    :goto_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Landroid/widget/TextView;

    if-nez v0, :cond_b

    goto :goto_b

    .line 230
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->bottom_bar_button_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 229
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 231
    :goto_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelfManager;->setButtonContentDescription()V

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mNotiSettingButton:Landroid/widget/TextView;

    if-nez v0, :cond_c

    goto :goto_c

    :cond_c
    sget v1, Lcom/android/systemui/R$string;->noti_setting_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 233
    :goto_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Landroid/widget/TextView;

    if-nez v0, :cond_d

    goto :goto_d

    :cond_d
    sget v1, Lcom/android/systemui/R$string;->clear_all_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 234
    :goto_d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelfManager;->updateClearAllOnShelf()V

    return-void
.end method

.method public onUiModeChanged()V
    .locals 0

    .line 263
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onUiModeChanged()V

    .line 265
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelfManager;->updateTextColor()V

    return-void
.end method

.method public final registerConfigurationCallback()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final setBarState(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->statusBarState:I

    return-void
.end method

.method public final setDismissButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 205
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Landroid/widget/TextView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public final setManageButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 201
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mNotiSettingButton:Landroid/widget/TextView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public final setNotificationPanelController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->notificationPanelController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-nez p1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/NotificationShelfManager$notificationPanelController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationShelfManager$notificationPanelController$1;-><init>(Lcom/android/systemui/statusbar/NotificationShelfManager;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addExpansionListener(Lcom/android/systemui/statusbar/phone/PanelExpansionListener;)V

    :goto_0
    return-void
.end method

.method public final setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 2
    .param p1    # Lcom/android/systemui/statusbar/NotificationShelf;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->shelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-nez p1, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->noti_setting:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mNotiSettingButton:Landroid/widget/TextView;

    .line 56
    sget v0, Lcom/android/systemui/R$id;->clear_all:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Landroid/widget/TextView;

    .line 57
    sget v0, Lcom/android/systemui/R$id;->notification_shelf_text_area:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mShelfTextArea:Landroid/widget/LinearLayout;

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelfManager;->updateTextColor()V

    .line 61
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Landroid/widget/TextView;

    const/4 v0, 0x4

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mNotiSettingButton:Landroid/widget/TextView;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final shouldShowNotificationShelf()Z
    .locals 1

    .line 116
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->statusBarState:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final startButtonsAnimation(Z)V
    .locals 9

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mNotiSettingButton:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x40000000    # 2.0f

    const-wide/16 v4, 0x96

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v0, :cond_3

    .line 122
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 125
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroid/widget/TextView;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v1

    goto :goto_0

    :cond_1
    move v8, v2

    goto :goto_0

    :cond_2
    move v8, v6

    :goto_0
    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 126
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 127
    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v8, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 128
    new-instance v8, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonsAnimation$1;

    invoke-direct {v8, p1, p0}, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonsAnimation$1;-><init>(ZLcom/android/systemui/statusbar/NotificationShelfManager;)V

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 139
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p1, :cond_4

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Landroid/widget/TextView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Landroid/widget/TextView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_6

    .line 142
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Landroid/widget/TextView;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/widget/TextView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_1

    :cond_6
    move v1, v6

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 143
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 144
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 145
    new-instance v1, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonsAnimation$2;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonsAnimation$2;-><init>(ZLcom/android/systemui/statusbar/NotificationShelfManager;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 153
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_7
    return-void
.end method

.method public final updateClearAllOnShelf()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelfManager;->getNotificationPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->hasActiveClearableNotifications()Z

    move-result p0

    .line 177
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 178
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    if-eqz p0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    .line 180
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    :cond_1
    const p0, 0x3e99999a    # 0.3f

    .line 182
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateIconDimens()I
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    sget v1, Lcom/android/systemui/R$dimen;->notification_shelf_icon_container_padding_end:I

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mIconContainerPaddingEnd:I

    .line 98
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->notification_icon_view_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final updateNotiSettingOnShelf()V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 254
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelfManager;->setNotiSettingsEnabled(Z)V

    return-void
.end method

.method public final updateShelfTextAreaVisibility()V
    .locals 2

    .line 249
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->statusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 250
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mShelfTextArea:Landroid/widget/LinearLayout;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final updateShowButtonShape()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    .line 272
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mNotiSettingButton:Landroid/widget/TextView;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    :goto_1
    return-void
.end method

.method public final updateTextColor()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->bottom_bar_button_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 108
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$bool;->theme_designer_quick_panel_turned_on:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->context:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->status_bar_date_clock_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mNotiSettingButton:Landroid/widget/TextView;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Landroid/widget/TextView;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void
.end method
