.class final Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$1$2;
.super Ljava/lang/Object;
.source "SettingFragment.kt"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/fragment/SettingFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/ui/fragment/SettingFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/fragment/SettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$1$2;->this$0:Lcom/android/systemui/controls/ui/fragment/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 87
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$1$2;->this$0:Lcom/android/systemui/controls/ui/fragment/SettingFragment;

    invoke-static {p1}, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->access$getSaLogger$p(Lcom/android/systemui/controls/ui/fragment/SettingFragment;)Lcom/android/systemui/controls/ui/util/SALogger;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/controls/ui/util/SALogger$Event$SettingsTapUseWhileUnlocked;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Event$SettingsTapUseWhileUnlocked;

    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$1$2;->this$0:Lcom/android/systemui/controls/ui/fragment/SettingFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Landroidx/appcompat/app/AppCompatActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$1$2;->this$0:Lcom/android/systemui/controls/ui/fragment/SettingFragment;

    .line 91
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$id;->fragment_container:I

    invoke-static {p0}, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->access$getSubFragment$p(Lcom/android/systemui/controls/ui/fragment/SettingFragment;)Lcom/android/systemui/controls/ui/fragment/SubSettingFragment;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 92
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :goto_1
    const/4 p0, 0x1

    return p0
.end method
