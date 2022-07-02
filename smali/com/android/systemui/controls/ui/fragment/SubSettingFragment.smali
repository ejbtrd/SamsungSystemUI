.class public final Lcom/android/systemui/controls/ui/fragment/SubSettingFragment;
.super Landroidx/fragment/app/Fragment;
.source "SubSettingFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ui/fragment/SubSettingFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/ui/fragment/SubSettingFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final saLogger:Lcom/android/systemui/controls/ui/util/SALogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ui/fragment/SubSettingFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/fragment/SubSettingFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/ui/fragment/SubSettingFragment;->Companion:Lcom/android/systemui/controls/ui/fragment/SubSettingFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/ui/util/SALogger;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/ui/util/SALogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "saLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SubSettingFragment;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    return-void
.end method

.method public static final synthetic access$getSaLogger$p(Lcom/android/systemui/controls/ui/fragment/SubSettingFragment;)Lcom/android/systemui/controls/ui/util/SALogger;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/SubSettingFragment;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    return-object p0
.end method

.method private static final onCreateView$lambda-4$getSmartThingsAppName(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 4

    const-string v0, "CHC"

    const-string v1, "CHM"

    const-string v2, "CHU"

    const-string v3, "CTC"

    .line 67
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 68
    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->controls_smartthings_app_name_china:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "resources.getString(R.string.controls_smartthings_app_name_china)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 70
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->controls_smartthings_app_name:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "resources.getString(R.string.controls_smartthings_app_name)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    instance-of v0, p3, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    check-cast p3, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/4 v0, 0x1

    if-nez p3, :cond_1

    goto :goto_2

    .line 34
    :cond_1
    invoke-virtual {p3}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 36
    :cond_2
    sget-boolean v2, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE_TABLET:Z

    if-eqz v2, :cond_3

    .line 37
    sget v2, Lcom/android/systemui/R$string;->controls_settings_use_while_tablet_is_locked:I

    goto :goto_1

    .line 39
    :cond_3
    sget v2, Lcom/android/systemui/R$string;->controls_settings_use_while_phone_is_locked:I

    .line 41
    :goto_1
    invoke-virtual {p3, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {p3, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 49
    :goto_2
    sget p3, Lcom/android/systemui/R$layout;->fragment_controls_subsetting:I

    const/4 v1, 0x0

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 51
    sget p2, Lcom/android/systemui/R$id;->switch_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SeslSwitchBar;

    .line 52
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v2, "ControlsSettingsUseWhilePhoneIsLocked"

    invoke-static {p3, v2, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p3

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/SeslSwitchBar;->setChecked(Z)V

    .line 53
    new-instance p3, Lcom/android/systemui/controls/ui/fragment/SubSettingFragment$onCreateView$2$1;

    invoke-direct {p3, p2, p0}, Lcom/android/systemui/controls/ui/fragment/SubSettingFragment$onCreateView$2$1;-><init>(Landroidx/appcompat/widget/SeslSwitchBar;Lcom/android/systemui/controls/ui/fragment/SubSettingFragment;)V

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/SeslSwitchBar;->addOnSwitchChangeListener(Landroidx/appcompat/widget/SeslSwitchBar$OnSwitchChangeListener;)V

    .line 65
    sget p2, Lcom/android/systemui/R$id;->description:I

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 75
    sget-boolean p3, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE_TABLET:Z

    if-eqz p3, :cond_4

    .line 76
    sget p3, Lcom/android/systemui/R$string;->controls_settings_use_while_phone_is_locked_description_tablet:I

    goto :goto_3

    .line 78
    :cond_4
    sget p3, Lcom/android/systemui/R$string;->controls_settings_use_while_phone_is_locked_description:I

    .line 80
    :goto_3
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 81
    invoke-virtual {p2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v2, "resources.getString(controlsSettingUseWhilePhoneIsLockedDescription)"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v0, [Ljava/lang/Object;

    .line 82
    invoke-static {p2}, Lcom/android/systemui/controls/ui/fragment/SubSettingFragment;->onCreateView$lambda-4$getSmartThingsAppName(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 80
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    sget-boolean p2, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    if-eqz p2, :cond_5

    .line 87
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/SubSettingFragment;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    sget-object p2, Lcom/android/systemui/controls/ui/util/SALogger$Screen$UseWhile;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$UseWhile;

    invoke-virtual {p0, p2}, Lcom/android/systemui/controls/ui/util/SALogger;->sendScreenView(Lcom/android/systemui/controls/ui/util/SALogger$Screen;)V

    :cond_5
    const-string p0, "fragmentView"

    .line 90
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
