.class Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SamsungGrayBarControlHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCustomStatusUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;Landroid/content/Context;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;

    .line 175
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 171
    invoke-static {}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper$SettingsObserver;->mCustomStatusUri:Landroid/net/Uri;

    .line 176
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper$SettingsObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper$SettingsObserver;->mCustomStatusUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 186
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->access$200(Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;Landroid/content/Context;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->access$102(Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;I)I

    return-void
.end method
