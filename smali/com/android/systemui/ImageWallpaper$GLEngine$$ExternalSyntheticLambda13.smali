.class public final synthetic Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/ImageWallpaper$GLEngine;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ImageWallpaper$GLEngine;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda13;->f$0:Lcom/android/systemui/ImageWallpaper$GLEngine;

    iput-boolean p2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda13;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda13;->f$0:Lcom/android/systemui/ImageWallpaper$GLEngine;

    iget-boolean p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda13;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->$r8$lambda$EybK_er8F83eLAFvHXxWQx9jDWY(Lcom/android/systemui/ImageWallpaper$GLEngine;Z)V

    return-void
.end method
