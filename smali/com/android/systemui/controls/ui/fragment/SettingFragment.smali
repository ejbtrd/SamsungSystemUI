.class public final Lcom/android/systemui/controls/ui/fragment/SettingFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "SettingFragment.kt"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ui/fragment/SettingFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/ui/fragment/SettingFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private preferenceScreen:Landroidx/preference/SeslSwitchPreferenceScreen;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final saLogger:Lcom/android/systemui/controls/ui/util/SALogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final subFragment:Lcom/android/systemui/controls/ui/fragment/SubSettingFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ui/fragment/SettingFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/fragment/SettingFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->Companion:Lcom/android/systemui/controls/ui/fragment/SettingFragment$Companion;

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

    .line 20
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 27
    new-instance v0, Lcom/android/systemui/controls/ui/fragment/SubSettingFragment;

    invoke-direct {v0, p1}, Lcom/android/systemui/controls/ui/fragment/SubSettingFragment;-><init>(Lcom/android/systemui/controls/ui/util/SALogger;)V

    iput-object v0, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->subFragment:Lcom/android/systemui/controls/ui/fragment/SubSettingFragment;

    return-void
.end method

.method public static final synthetic access$getSaLogger$p(Lcom/android/systemui/controls/ui/fragment/SettingFragment;)Lcom/android/systemui/controls/ui/util/SALogger;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    return-object p0
.end method

.method public static final synthetic access$getSubFragment$p(Lcom/android/systemui/controls/ui/fragment/SettingFragment;)Lcom/android/systemui/controls/ui/fragment/SubSettingFragment;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->subFragment:Lcom/android/systemui/controls/ui/fragment/SubSettingFragment;

    return-object p0
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 69
    sget p1, Lcom/android/systemui/R$xml;->preference_setting:I

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    const-string p1, "ControlsSettingsUseWhilePhoneIsLocked"

    .line 70
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SeslSwitchPreferenceScreen;

    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->preferenceScreen:Landroidx/preference/SeslSwitchPreferenceScreen;

    if-nez p1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    sget-boolean p2, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE_TABLET:Z

    if-eqz p2, :cond_1

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$string;->controls_settings_use_while_tablet_is_locked:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 73
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    :cond_1
    new-instance p2, Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$1$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$1$1;-><init>(Lcom/android/systemui/controls/ui/fragment/SettingFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 86
    new-instance p2, Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$1$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$1$2;-><init>(Lcom/android/systemui/controls/ui/fragment/SettingFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 98
    :goto_0
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    if-eqz p1, :cond_2

    .line 99
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    sget-object p1, Lcom/android/systemui/controls/ui/util/SALogger$Screen$Setting;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$Setting;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/util/SALogger;->sendScreenView(Lcom/android/systemui/controls/ui/util/SALogger$Screen;)V

    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
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
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 36
    :cond_2
    sget v2, Lcom/android/systemui/R$string;->controls_menu_settings:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 40
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 44
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_2

    .line 45
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$color;->control_settings_activity_background:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_2
    return-object p0
.end method

.method public onPause()V
    .locals 1

    .line 64
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 65
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 50
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 51
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 53
    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->preferenceScreen:Landroidx/preference/SeslSwitchPreferenceScreen;

    if-nez v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    const-string v2, "ControlsSettingsUseWhilePhoneIsLocked"

    .line 55
    invoke-static {p0, v2, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    .line 54
    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/content/SharedPreferences;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ControlsSettingsUseWhilePhoneIsLocked"

    .line 105
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v0, p2, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 110
    new-instance v2, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$UseWhileUnlockedActive;

    .line 111
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 110
    invoke-direct {v2, p1}, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$UseWhileUnlockedActive;-><init>(Z)V

    .line 108
    invoke-virtual {v0, p0, v2}, Lcom/android/systemui/controls/ui/util/SALogger;->sendStatusEvent(Landroid/content/Context;Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent;)V

    :cond_0
    return-void
.end method
