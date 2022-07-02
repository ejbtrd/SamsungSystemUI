.class Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;
.super Ljava/lang/Object;
.source "TwoPhoneModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwoPhoneModeModel"
.end annotation


# instance fields
.field public CallEnabled:Z

.field public MsgEnabled:Z

.field public Registered:Z

.field private final SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

.field public UserCreated:Z

.field private mSettingCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;


# direct methods
.method public static synthetic $r8$lambda$LvCnNC6WbKkCRrViWesK-ndgjkQ(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->lambda$new$0(Landroid/net/Uri;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;)V
    .locals 2

    .line 330
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    new-array p1, p1, [Landroid/net/Uri;

    const-string/jumbo v0, "two_register"

    .line 332
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string/jumbo v0, "two_account"

    .line 333
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string/jumbo v0, "two_call_enabled"

    .line 334
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    const-string/jumbo v0, "two_sms_enabled"

    .line 335
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    .line 337
    new-instance p1, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->mSettingCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$1;)V
    .locals 0

    .line 330
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;-><init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/net/Uri;)V
    .locals 0

    .line 337
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->access$500(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;I)V

    return-void
.end method


# virtual methods
.method public getLogString()Ljava/lang/String;
    .locals 3

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  CallEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->CallEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", MsgEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->MsgEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", UserCreated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->UserCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Registered:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->Registered:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Lcom/android/systemui/util/SettingsHelper;)V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->access$400(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;)Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;->isTwoPhoneTestModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 342
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->Registered:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->UserCreated:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->MsgEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->CallEnabled:Z

    :cond_0
    if-eqz p1, :cond_1

    .line 345
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->mSettingCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public isRegisteredAndEnabled()Z
    .locals 1

    .line 380
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->CallEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->MsgEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->Registered:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUserCreatedInMultiUser()Z
    .locals 3

    .line 384
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->access$400(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;)Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;->isTwoPhoneTestModeEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->access$100(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;)Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 386
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->access$100(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 387
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method public updateValues()Z
    .locals 7

    .line 350
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->access$400(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;)Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;->isTwoPhoneTestModeEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 351
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->Registered:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->UserCreated:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->MsgEnabled:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->CallEnabled:Z

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 355
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isTwoPhoneRegistered()Z

    move-result v3

    .line 356
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->hasTwoPhoneAccount()Z

    move-result v4

    .line 357
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isTwoPhoneCallEnabled()Z

    move-result v5

    .line 358
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isTwoPhoneSMSEnabled()Z

    move-result v0

    .line 359
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->Registered:Z

    if-eq v6, v3, :cond_1

    .line 360
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->Registered:Z

    move v1, v2

    .line 363
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->UserCreated:Z

    if-eq v3, v4, :cond_2

    .line 364
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->UserCreated:Z

    .line 366
    invoke-static {}, Lcom/android/systemui/BasicRune;->refreshMultiUserFeature()V

    move v1, v2

    .line 368
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->CallEnabled:Z

    if-eq v3, v5, :cond_3

    .line 369
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->CallEnabled:Z

    move v1, v2

    .line 372
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->MsgEnabled:Z

    if-eq v3, v0, :cond_4

    .line 373
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->MsgEnabled:Z

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    return v2
.end method
