import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.nio.channels.SeekableByteChannel;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;

public class FD0Reader implements AutoCloseable {
    private static final int MAGIC = 0x46443030;
    private static final int MIN_VERSION = 0;
    private static final int MAX_VERSION = 1;
    private static final int BLOCK_SIZE = 65536;

   
    @Override
    public void close() throws Exception {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'close'");
    }
}
