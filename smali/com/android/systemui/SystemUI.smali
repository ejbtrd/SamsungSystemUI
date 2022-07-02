.class public abstract Lcom/android/systemui/SystemUI;
.super Ljava/lang/Object;
.source "SystemUI.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mFlipfont:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/android/systemui/SystemUI;->mFlipfont:I

    .line 50
    iput-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V
    .locals 1

    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_0

    const p2, 0x10407d4

    .line 75
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const p2, 0x10407d3

    .line 76
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p2, "android.substName"

    .line 77
    invoke-virtual {v0, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onBootCompleted()V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 57
    iget v0, p1, Landroid/content/res/Configuration;->FlipFont:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/android/systemui/SystemUI;->mFlipfont:I

    if-eq v1, v0, :cond_0

    .line 58
    invoke-static {}, Landroid/graphics/Typeface;->setFlipFonts()V

    .line 59
    iget p1, p1, Landroid/content/res/Configuration;->FlipFont:I

    iput p1, p0, Lcom/android/systemui/SystemUI;->mFlipfont:I

    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public abstract start()V
.end method
