.class Lcom/android/systemui/statusbar/phone/ScrimController$2;
.super Ljava/lang/Object;
.source "ScrimController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/ScrimController;-><init>(Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/content/res/Resources;Ldagger/Lazy;Lcom/android/systemui/keyguard/DisplayLifecycle;Landroid/app/AlarmManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;Landroid/os/Handler;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ScrimController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$200(Lcom/android/systemui/statusbar/phone/ScrimController;)I

    move-result v0

    iget v1, p1, Landroid/content/res/Configuration;->themeSeq:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$300(Lcom/android/systemui/statusbar/phone/ScrimController;)I

    move-result v0

    iget v1, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$400(Lcom/android/systemui/statusbar/phone/ScrimController;)I

    move-result v0

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v0, v1, :cond_4

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget v1, p1, Landroid/content/res/Configuration;->themeSeq:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$202(Lcom/android/systemui/statusbar/phone/ScrimController;I)I

    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget v1, p1, Landroid/content/res/Configuration;->assetsSeq:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$302(Lcom/android/systemui/statusbar/phone/ScrimController;I)I

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$402(Lcom/android/systemui/statusbar/phone/ScrimController;I)I

    .line 359
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$600(Lcom/android/systemui/statusbar/phone/ScrimController;)Landroid/content/res/Resources;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/android/systemui/R$color;->sec_panel_background_dim_tablet_color:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/android/systemui/R$color;->sec_panel_background_color:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$502(Lcom/android/systemui/statusbar/phone/ScrimController;I)I

    .line 360
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$600(Lcom/android/systemui/statusbar/phone/ScrimController;)Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$bool;->theme_designer_quick_panel_turned_on:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    const-string v1, "ScrimController"

    if-eqz p1, :cond_2

    .line 361
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$600(Lcom/android/systemui/statusbar/phone/ScrimController;)Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/android/systemui/R$color;->sec_panel_background_color:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    ushr-int/lit8 p1, p1, 0x18

    int-to-float p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr p1, v2

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr p1, v2

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$702(F)F

    .line 362
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$700()F

    move-result p1

    sput p1, Lcom/android/systemui/statusbar/phone/ScrimController;->sSecPanelBehindAlpha:F

    .line 363
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$700()F

    move-result p1

    sput p1, Lcom/android/systemui/statusbar/phone/ScrimController;->sSecNotiScrimAlpha:F

    .line 364
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<QUICK_OPENTHEME Alpha is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$700()F

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " , QuickPanel Theme : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$600(Lcom/android/systemui/statusbar/phone/ScrimController;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 367
    :cond_2
    invoke-static {}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getScrimPanelBehindAlpha()F

    move-result p1

    sput p1, Lcom/android/systemui/statusbar/phone/ScrimController;->sSecPanelBehindAlpha:F

    .line 368
    invoke-static {}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getScrimNotiScrimAlpha()F

    move-result p1

    sput p1, Lcom/android/systemui/statusbar/phone/ScrimController;->sSecNotiScrimAlpha:F

    .line 370
    :goto_1
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$800()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 371
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<QUICK_OPENTHEME is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getActiveThemePackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$600(Lcom/android/systemui/statusbar/phone/ScrimController;)Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$color;->notification_header_bg_tw:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notification_header_bg_tw = #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$600(Lcom/android/systemui/statusbar/phone/ScrimController;)Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$color;->sec_panel_background_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sec_panel_background_color = #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$900(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    :cond_4
    return-void
.end method
