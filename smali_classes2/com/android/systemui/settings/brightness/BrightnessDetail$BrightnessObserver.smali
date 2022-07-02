.class Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "BrightnessDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/brightness/BrightnessDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDetail;Landroid/os/Handler;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 360
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 365
    sget-object p1, Lcom/android/systemui/settings/brightness/BrightnessController;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/systemui/settings/brightness/BrightnessController;->SCREEN_DISPLAY_OUTDOOR_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 366
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$1300(Lcom/android/systemui/settings/brightness/BrightnessDetail;)V

    :cond_1
    return-void
.end method

.method public startObserving()V
    .locals 4

    .line 371
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$000(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 372
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 373
    sget-object v1, Lcom/android/systemui/settings/brightness/BrightnessController;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 374
    sget-object v1, Lcom/android/systemui/settings/brightness/BrightnessController;->SCREEN_DISPLAY_OUTDOOR_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public stopObserving()V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->access$000(Lcom/android/systemui/settings/brightness/BrightnessDetail;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 379
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
