.class Lcom/android/systemui/settings/multisim/MultiSIMController$7;
.super Landroid/database/ContentObserver;
.source "MultiSIMController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/multisim/MultiSIMController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMController;Landroid/os/Handler;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$7;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 365
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string/jumbo p1, "select_icon_1"

    .line 369
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MultiSIMController"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 370
    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$7;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$200(Lcom/android/systemui/settings/multisim/MultiSIMController;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object p2

    iget-object p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$7;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$100(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    aput p1, p2, v2

    .line 371
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$7;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$200(Lcom/android/systemui/settings/multisim/MultiSIMController;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    aget p1, p1, v2

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$7;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$200(Lcom/android/systemui/settings/multisim/MultiSIMController;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    aget p1, p1, v2

    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$7;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$800(Lcom/android/systemui/settings/multisim/MultiSIMController;)I

    move-result p2

    if-lt p1, p2, :cond_6

    .line 372
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSimIconAndNameObserver onChange() SimImageIdx[0] = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$7;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$200(Lcom/android/systemui/settings/multisim/MultiSIMController;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object p2

    iget-object p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    aget p2, p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$7;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$200(Lcom/android/systemui/settings/multisim/MultiSIMController;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    aput v2, p1, v2

    goto/16 :goto_0

    :cond_2
    const-string/jumbo p1, "select_name_1"

    .line 375
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 376
    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$7;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$200(Lcom/android/systemui/settings/multisim/MultiSIMController;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object p2

    iget-object p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$7;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$100(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    goto/16 :goto_0

    :cond_3
    const-string/jumbo p1, "select_icon_2"

    .line 377
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 378
    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$7;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$200(Lcom/android/systemui/settings/multisim/MultiSIMController;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object p2

    iget-object p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$7;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$100(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    aput p1, p2, v2

    .line 379
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$7;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$200(Lcom/android/systemui/settings/multisim/MultiSIMController;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    aget p1, p1, v2

    if-ltz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$7;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$200(Lcom/android/systemui/settings/multisim/MultiSIMController;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    aget p1, p1, v2

    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$7;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$800(Lcom/android/systemui/settings/multisim/MultiSIMController;)I

    move-result p2

    if-lt p1, p2, :cond_6

    .line 380
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSimIconAndNameObserver onChange() SimImageIdx[1] = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$7;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$200(Lcom/android/systemui/settings/multisim/MultiSIMController;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object p2

    iget-object p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    aget p2, p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$7;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$200(Lcom/android/systemui/settings/multisim/MultiSIMController;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    aput v2, p1, v2

    goto :goto_0

    :cond_5
    const-string/jumbo p1, "select_name_2"

    .line 383
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 384
    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$7;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$200(Lcom/android/systemui/settings/multisim/MultiSIMController;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object p2

    iget-object p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$7;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$100(Lcom/android/systemui/settings/multisim/MultiSIMController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    .line 387
    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$7;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$400(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    return-void
.end method
