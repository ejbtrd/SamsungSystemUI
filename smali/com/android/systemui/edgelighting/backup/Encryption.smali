.class public Lcom/android/systemui/edgelighting/backup/Encryption;
.super Ljava/lang/Object;
.source "Encryption.java"


# static fields
.field private static mCipher:Ljavax/crypto/Cipher;

.field private static mSalt:[B

.field private static secretKey:Ljavax/crypto/spec/SecretKeySpec;

.field private static securityPassword:Ljava/lang/String;


# direct methods
.method public static decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    new-instance p2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 146
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    .line 149
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 152
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_3

    .line 153
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 154
    :try_start_1
    invoke-static {p1, p3}, Lcom/android/systemui/edgelighting/backup/Encryption;->decryptStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 155
    :try_start_2
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 p0, 0x400

    :try_start_3
    new-array v1, p0, [B

    :goto_0
    const/4 v2, 0x0

    .line 158
    invoke-virtual {p2, v1, v2, p0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 159
    invoke-virtual {p3, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_2
    move-object p0, p2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v5, p2

    move-object p2, p0

    move-object p0, v5

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object v5, p2

    move-object p2, p0

    move-object p0, v5

    goto/16 :goto_2

    :catch_1
    move-exception p0

    move-object v5, p2

    move-object p2, p0

    move-object p0, v5

    goto/16 :goto_3

    :catchall_1
    move-exception p3

    move-object v5, p3

    move-object p3, p0

    move-object p0, p2

    move-object p2, v5

    goto/16 :goto_5

    :catch_2
    move-exception p3

    move-object v5, p3

    move-object p3, p0

    move-object p0, p2

    move-object p2, v5

    goto :goto_2

    :catch_3
    move-exception p3

    move-object v5, p3

    move-object p3, p0

    move-object p0, p2

    move-object p2, v5

    goto :goto_3

    :catchall_2
    move-exception p2

    move-object p3, p0

    goto :goto_5

    :catch_4
    move-exception p2

    move-object p3, p0

    goto :goto_2

    :catch_5
    move-exception p2

    move-object p3, p0

    goto :goto_3

    :cond_3
    move-object p1, p0

    move-object p3, p1

    :goto_1
    if-eqz p0, :cond_4

    .line 168
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz p3, :cond_5

    .line 171
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    :cond_5
    if-eqz p1, :cond_a

    goto :goto_4

    :catchall_3
    move-exception p1

    move-object p3, p0

    move-object p2, p1

    move-object p1, p3

    goto :goto_5

    :catch_6
    move-exception p1

    move-object p3, p0

    move-object p2, p1

    move-object p1, p3

    .line 165
    :goto_2
    :try_start_4
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz p0, :cond_6

    .line 168
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz p3, :cond_7

    .line 171
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    :cond_7
    if-eqz p1, :cond_a

    goto :goto_4

    :catch_7
    move-exception p1

    move-object p3, p0

    move-object p2, p1

    move-object p1, p3

    .line 163
    :goto_3
    :try_start_5
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz p0, :cond_8

    .line 168
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_8
    if-eqz p3, :cond_9

    .line 171
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    :cond_9
    if-eqz p1, :cond_a

    .line 174
    :goto_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_a
    return-object v0

    :catchall_4
    move-exception p2

    :goto_5
    if-eqz p0, :cond_b

    .line 168
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_b
    if-eqz p3, :cond_c

    .line 171
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    :cond_c
    if-eqz p1, :cond_d

    .line 174
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 176
    :cond_d
    throw p2
.end method

.method public static decryptStream(Ljava/io/InputStream;I)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 181
    sget-object v0, Lcom/android/systemui/edgelighting/backup/Encryption;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    .line 182
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 183
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x10

    new-array p1, p1, [B

    .line 185
    sput-object p1, Lcom/android/systemui/edgelighting/backup/Encryption;->mSalt:[B

    .line 186
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    .line 187
    invoke-static {}, Lcom/android/systemui/edgelighting/backup/Encryption;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    sput-object p1, Lcom/android/systemui/edgelighting/backup/Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_0

    .line 189
    :cond_0
    invoke-static {}, Lcom/android/systemui/edgelighting/backup/Encryption;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    sput-object p1, Lcom/android/systemui/edgelighting/backup/Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    .line 191
    :goto_0
    sget-object p1, Lcom/android/systemui/edgelighting/backup/Encryption;->mCipher:Ljavax/crypto/Cipher;

    const/4 v0, 0x2

    sget-object v2, Lcom/android/systemui/edgelighting/backup/Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1, v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 192
    new-instance p1, Ljavax/crypto/CipherInputStream;

    sget-object v0, Lcom/android/systemui/edgelighting/backup/Encryption;->mCipher:Ljavax/crypto/Cipher;

    invoke-direct {p1, p0, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object p1
.end method

.method public static encrypt(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 87
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 90
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 91
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 92
    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    :try_start_2
    invoke-static {p0, p2}, Lcom/android/systemui/edgelighting/backup/Encryption;->encryptStream(Ljava/io/OutputStream;I)Ljava/io/OutputStream;

    move-result-object p1

    const/16 p2, 0x400

    new-array v2, p2, [B

    :goto_0
    const/4 v3, 0x0

    .line 97
    invoke-virtual {v1, v2, v3, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 98
    invoke-virtual {p1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    move-object p2, p0

    move-object p0, p1

    move-object p1, v1

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v6, v1

    move-object v1, p0

    move-object p0, p2

    move-object p2, p1

    move-object p1, v6

    goto/16 :goto_9

    :catch_0
    move-exception p2

    move-object v6, v1

    move-object v1, p0

    move-object p0, p2

    move-object p2, p1

    move-object p1, v6

    goto :goto_4

    :catch_1
    move-exception p2

    move-object v6, v1

    move-object v1, p0

    move-object p0, p2

    move-object p2, p1

    move-object p1, v6

    goto :goto_6

    :catchall_1
    move-exception p0

    move-object p2, p1

    move-object p1, v1

    goto :goto_2

    :catch_2
    move-exception p0

    move-object p2, p1

    move-object p1, v1

    goto :goto_3

    :catch_3
    move-exception p0

    move-object p2, p1

    move-object p1, v1

    goto :goto_5

    :cond_2
    move-object p0, p1

    move-object p2, p0

    :goto_1
    if-eqz p1, :cond_3

    .line 107
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz p0, :cond_4

    .line 110
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    :cond_4
    if-eqz p2, :cond_9

    .line 113
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_8

    :catchall_2
    move-exception p0

    move-object p2, p1

    :goto_2
    move-object v1, p2

    goto :goto_9

    :catch_4
    move-exception p0

    move-object p2, p1

    :goto_3
    move-object v1, p2

    .line 104
    :goto_4
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz p1, :cond_5

    .line 107
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz p2, :cond_6

    .line 110
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    :cond_6
    if-eqz v1, :cond_9

    goto :goto_7

    :catch_5
    move-exception p0

    move-object p2, p1

    :goto_5
    move-object v1, p2

    .line 102
    :goto_6
    :try_start_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz p1, :cond_7

    .line 107
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz p2, :cond_8

    .line 110
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    :cond_8
    if-eqz v1, :cond_9

    .line 113
    :goto_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_9
    :goto_8
    return-object v0

    :catchall_3
    move-exception p0

    :goto_9
    if-eqz p1, :cond_a

    .line 107
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_a
    if-eqz p2, :cond_b

    .line 110
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    :cond_b
    if-eqz v1, :cond_c

    .line 113
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 115
    :cond_c
    throw p0
.end method

.method public static encryptStream(Ljava/io/OutputStream;I)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 120
    sget-object v0, Lcom/android/systemui/edgelighting/backup/Encryption;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    .line 123
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 124
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 125
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 127
    invoke-static {}, Lcom/android/systemui/edgelighting/backup/Encryption;->generateEncryptSalt()[B

    move-result-object p1

    sput-object p1, Lcom/android/systemui/edgelighting/backup/Encryption;->mSalt:[B

    .line 128
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 129
    invoke-static {}, Lcom/android/systemui/edgelighting/backup/Encryption;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    sput-object p1, Lcom/android/systemui/edgelighting/backup/Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_0

    .line 131
    :cond_0
    invoke-static {}, Lcom/android/systemui/edgelighting/backup/Encryption;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    sput-object p1, Lcom/android/systemui/edgelighting/backup/Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    .line 133
    :goto_0
    sget-object p1, Lcom/android/systemui/edgelighting/backup/Encryption;->mCipher:Ljavax/crypto/Cipher;

    sget-object v2, Lcom/android/systemui/edgelighting/backup/Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1, v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 134
    new-instance p1, Ljavax/crypto/CipherOutputStream;

    sget-object v0, Lcom/android/systemui/edgelighting/backup/Encryption;->mCipher:Ljavax/crypto/Cipher;

    invoke-direct {p1, p0, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object p1
.end method

.method public static generateEncryptSalt()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 62
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v1
.end method

.method public static generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 71
    sget-object v0, Lcom/android/systemui/edgelighting/backup/Encryption;->securityPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "PBKDF2WithHmacSHA1"

    .line 73
    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 74
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    sget-object v3, Lcom/android/systemui/edgelighting/backup/Encryption;->mSalt:[B

    const/16 v4, 0x3e8

    const/16 v5, 0x100

    invoke-direct {v2, v0, v3, v4, v5}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 75
    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 76
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public static generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SHA-256"

    .line 51
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 52
    sget-object v1, Lcom/android/systemui/edgelighting/backup/Encryption;->securityPassword:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 54
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, v2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static streamCrypt(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    sput-object p0, Lcom/android/systemui/edgelighting/backup/Encryption;->securityPassword:Ljava/lang/String;

    const-string p0, "SHA-256"

    .line 42
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 43
    sget-object v0, Lcom/android/systemui/edgelighting/backup/Encryption;->securityPassword:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->update([B)V

    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 45
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string p0, "AES/CBC/PKCS5Padding"

    .line 46
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    sput-object p0, Lcom/android/systemui/edgelighting/backup/Encryption;->mCipher:Ljavax/crypto/Cipher;

    .line 47
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p0, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sput-object p0, Lcom/android/systemui/edgelighting/backup/Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    return-void
.end method
