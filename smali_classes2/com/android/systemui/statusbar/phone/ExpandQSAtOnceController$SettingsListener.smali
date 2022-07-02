.class Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController$SettingsListener;
.super Ljava/lang/Object;
.source "ExpandQSAtOnceController.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsListener"
.end annotation


# instance fields
.field private final mSettingsValueList:[Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;)V
    .locals 2

    .line 121
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController$SettingsListener;->this$0:Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    new-array p1, p1, [Landroid/net/Uri;

    const-string/jumbo v0, "swipe_directly_to_quick_setting"

    .line 123
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string/jumbo v0, "swipe_directly_to_quick_setting_area"

    .line 124
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string/jumbo v0, "swipe_directly_to_quick_setting_position"

    .line 125
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController$SettingsListener;->mSettingsValueList:[Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController$1;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController$SettingsListener;-><init>(Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;)V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "swipe_directly_to_quick_setting"

    .line 139
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController$SettingsListener;->this$0:Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;

    const-string/jumbo v0, "onChanged(swipe_directly_to_quick_setting)"

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->access$300(Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;Ljava/lang/String;)V

    .line 141
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController$SettingsListener;->this$0:Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->access$400(Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;)Ldagger/Lazy;

    move-result-object p0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateResources()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "swipe_directly_to_quick_setting_area"

    .line 142
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController$SettingsListener;->this$0:Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;

    const-string/jumbo v0, "onChanged(swipe_directly_to_quick_setting_area)"

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->access$300(Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;Ljava/lang/String;)V

    .line 144
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController$SettingsListener;->this$0:Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->updateResources()V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "swipe_directly_to_quick_setting_position"

    .line 145
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 146
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController$SettingsListener;->this$0:Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;

    const-string/jumbo p1, "onChanged(swipe_directly_to_quick_setting_position)"

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->access$300(Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public register()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController$SettingsListener;->this$0:Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->access$200(Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController$SettingsListener;->this$0:Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->access$100(Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;)Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController$SettingsListener;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController$SettingsListener;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController$SettingsListener;->this$0:Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->access$200(Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController$SettingsListener;->this$0:Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->access$100(Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;)Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController$SettingsListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method
