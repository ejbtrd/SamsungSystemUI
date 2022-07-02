.class final Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$launchFavoritingActivity$1;
.super Ljava/lang/Object;
.source "CustomControlsProviderSelectorActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->launchFavoritingActivity(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $component:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;


# direct methods
.method constructor <init>(Landroid/content/ComponentName;Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$launchFavoritingActivity$1;->$component:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$launchFavoritingActivity$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 239
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$launchFavoritingActivity$1;->$component:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$launchFavoritingActivity$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;

    .line 241
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    invoke-static {p0}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->access$getListingController$p(Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;)Lcom/android/systemui/controls/management/ControlsListingController;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/systemui/controls/management/ControlsListingController;->getAppLabel(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "extra_app_label"

    .line 243
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.COMPONENT_NAME"

    .line 247
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/util/Pair;

    .line 249
    invoke-static {p0, v0}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 251
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_BADGE:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->access$getBadgeProvider$p(Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;)Lcom/android/systemui/controls/controller/util/BadgeProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/controls/controller/util/BadgeProvider;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
