.class final Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$1$1;
.super Ljava/lang/Object;
.source "SettingFragment.kt"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


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

    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$1$1;->this$0:Lcom/android/systemui/controls/ui/fragment/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const-string p1, "null cannot be cast to non-null type kotlin.Boolean"

    .line 77
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$1$1;->this$0:Lcom/android/systemui/controls/ui/fragment/SettingFragment;

    .line 78
    sget-boolean p2, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    if-eqz p2, :cond_0

    .line 79
    invoke-static {p0}, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->access$getSaLogger$p(Lcom/android/systemui/controls/ui/fragment/SettingFragment;)Lcom/android/systemui/controls/ui/util/SALogger;

    move-result-object p0

    .line 80
    new-instance p2, Lcom/android/systemui/controls/ui/util/SALogger$Event$UseWhileUnlockedOnOff;

    sget-object v0, Lcom/android/systemui/controls/ui/util/SALogger$Screen$Setting;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$Setting;

    invoke-direct {p2, v0, p1}, Lcom/android/systemui/controls/ui/util/SALogger$Event$UseWhileUnlockedOnOff;-><init>(Lcom/android/systemui/controls/ui/util/SALogger$Screen;Z)V

    .line 79
    invoke-virtual {p0, p2}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
