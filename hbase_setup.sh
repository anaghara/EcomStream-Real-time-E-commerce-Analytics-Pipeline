# hbase_setup.sh

# Start HBase shell
echo "Starting HBase shell..."
hbase shell <<EOF

# Create a table for storing ecommerce data
create 'ecommerce_data', 'event_details'

# Example of adding data to HBase
put 'ecommerce_data', 'row1', 'event_details:event_id', '1e9b3a9b-3a2e-4d2c-80b9-1c9d58a6e8a1'
put 'ecommerce_data', 'row1', 'event_details:category', 'electronics'

# Exit HBase shell
exit
EOF
