.class public Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;
.super Ljava/lang/Object;
.source "SubscreenNotificationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessagingStyleInfo"
.end annotation


# instance fields
.field private mContentText:Ljava/lang/String;

.field private mSender:Ljava/lang/String;

.field public mUriImage:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentText()Ljava/lang/String;
    .locals 0

    .line 390
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mContentText:Ljava/lang/String;

    return-object p0
.end method

.method public getSenderText()Ljava/lang/String;
    .locals 0

    .line 398
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mSender:Ljava/lang/String;

    return-object p0
.end method

.method public getUriImage()Landroid/graphics/Bitmap;
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mUriImage:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setContentText(Ljava/lang/String;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mContentText:Ljava/lang/String;

    return-void
.end method

.method public setSenderText(Ljava/lang/String;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mSender:Ljava/lang/String;

    return-void
.end method

.method public setUriImage(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mUriImage:Landroid/graphics/Bitmap;

    return-void
.end method
