.class public Lcom/android/systemui/tuner/TunerActivity;
.super Landroid/app/Activity;
.source "TunerActivity.java"

# interfaces
.implements Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;
    }
.end annotation


# instance fields
.field private final mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

.field private final mTunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method public static synthetic $r8$lambda$GeZHd0h7AMpApxNMYlEbxFOGJFw(Lcom/android/systemui/fragments/FragmentService;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/tuner/TunerActivity;->lambda$onDestroy$0(Lcom/android/systemui/fragments/FragmentService;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/tuner/TunerService;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerActivity;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    .line 56
    iput-object p2, p0, Lcom/android/systemui/tuner/TunerActivity;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    return-void
.end method

.method private static synthetic lambda$onDestroy$0(Lcom/android/systemui/fragments/FragmentService;)V
    .locals 0

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/fragments/FragmentService;->destroyAll()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.settings.action.DEMO_MODE"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 66
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const-string p1, "Demo mode"

    goto :goto_1

    :cond_1
    const-string p1, "SystemUI tuner"

    :goto_1
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isn\'t supported on this device"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v3, -0x80000000

    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 72
    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 73
    sget p1, Lcom/android/systemui/R$layout;->tuner_activity:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 74
    sget p1, Lcom/android/systemui/R$id;->action_bar:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Toolbar;

    if-eqz p1, :cond_2

    .line 76
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 79
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string/jumbo v3, "tuner"

    invoke-virtual {p1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_5

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    if-eqz v1, :cond_4

    .line 84
    new-instance p1, Lcom/android/systemui/tuner/DemoModeFragment;

    iget-object v0, p0, Lcom/android/systemui/tuner/TunerActivity;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    invoke-direct {p1, v0}, Lcom/android/systemui/tuner/DemoModeFragment;-><init>(Lcom/android/systemui/demomode/DemoModeController;)V

    goto :goto_3

    .line 85
    :cond_4
    new-instance p1, Lcom/android/systemui/tuner/TunerFragment;

    iget-object v0, p0, Lcom/android/systemui/tuner/TunerActivity;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-direct {p1, v0}, Lcom/android/systemui/tuner/TunerFragment;-><init>(Lcom/android/systemui/tuner/TunerService;)V

    .line 86
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$id;->content_frame:I

    invoke-virtual {p0, v0, p1, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 87
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_5
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 94
    const-class p0, Lcom/android/systemui/fragments/FragmentService;

    sget-object v0, Lcom/android/systemui/tuner/TunerActivity$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/tuner/TunerActivity$$ExternalSyntheticLambda0;

    invoke-static {p0, v0}, Lcom/android/systemui/Dependency;->destroy(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 96
    const-class p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    sget-object v0, Lcom/android/systemui/tuner/TunerActivity$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/systemui/tuner/TunerActivity$$ExternalSyntheticLambda1;

    invoke-static {p0, v0}, Lcom/android/systemui/Dependency;->destroy(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2

    .line 102
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    .line 106
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPreferenceStartFragment(Landroidx/preference/PreferenceFragment;Landroidx/preference/Preference;)Z
    .locals 4

    .line 119
    :try_start_0
    invoke-virtual {p2}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Fragment;

    .line 121
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    .line 122
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 125
    invoke-virtual {p2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    sget p0, Lcom/android/systemui/R$id;->content_frame:I

    invoke-virtual {v0, p0, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const-string p0, "PreferenceFragment"

    .line 127
    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 128
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    const-string p1, "TunerActivity"

    const-string p2, "Problem launching fragment"

    .line 131
    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceStartScreen(Landroidx/preference/PreferenceFragment;Landroidx/preference/PreferenceScreen;)Z
    .locals 4

    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 139
    new-instance v0, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;

    invoke-direct {v0}, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;-><init>()V

    .line 140
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 141
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string v3, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 143
    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 144
    sget p1, Lcom/android/systemui/R$id;->content_frame:I

    invoke-virtual {p0, p1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const-string p1, "PreferenceFragment"

    .line 145
    invoke-virtual {p0, p1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 146
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return v2
.end method
