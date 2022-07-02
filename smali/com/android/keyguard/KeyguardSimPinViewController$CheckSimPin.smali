.class public abstract Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;
.super Ljava/lang/Thread;
.source "KeyguardSimPinViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPinViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "CheckSimPin"
.end annotation


# instance fields
.field protected final mPin:Ljava/lang/String;

.field protected mSubId:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPinViewController;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/KeyguardSimPinViewController;Ljava/lang/String;I)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 327
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;->mPin:Ljava/lang/String;

    .line 328
    iput p3, p0, Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;->mSubId:I

    return-void
.end method


# virtual methods
.method abstract onSimCheckResponse(Landroid/telephony/PinResult;)V
.end method
